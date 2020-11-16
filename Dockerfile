FROM node:15-alpine3.12

WORKDIR /opt/sensu/web

RUN apk add git && \
    cd .. && \
    git clone https://github.com/sensu/web.git && \
    cd web && \
    yarn install && \
    yarn install --modules-folder /opt/sensu/yarn/node_modules

ENV NODE_ENV=production
ENV PORT=5000
EXPOSE 5000

CMD ["sh"]