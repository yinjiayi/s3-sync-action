FROM centos:8

RUN dnf -y install glibc-locale-source glibc-langpack-en 

RUN localedef -i en_US -f UTF-8 en_US.UTF-8

RUN dnf install python3 -y

RUN pip3 install --no-cache-dir awscli

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
