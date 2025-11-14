# Etapa 1: usar uma imagem mínima para servir arquivos estáticos
FROM nginx:alpine

# Remove configs padrão do NGINX
RUN rm -rf /usr/share/nginx/html/*

# Copia todos os arquivos do seu projeto para a pasta pública do NGINX
COPY . /usr/share/nginx/html

# Expõe a porta 80 (onde o NGINX roda)
EXPOSE 80

# Inicia o servidor
CMD ["nginx", "-g", "daemon off;"]
