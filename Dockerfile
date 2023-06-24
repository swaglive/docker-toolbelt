ARG         base=bash:alpine3.18

###

FROM        ${base}
ARG         packages="coreutils parallel"

RUN         apk add --no-cache --virtual .run-deps ${packages} && \
            echo 'will cite' | parallel --citation || true