# https://hub.docker.com/_/alpine/
FROM alpine:3.10

MAINTAINER Viktor Gustavsson <villor94@gmail.com>

RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
            rsync \
            openssh-client \
            ca-certificates \
 && rm -rf /var/cache/apk/*
