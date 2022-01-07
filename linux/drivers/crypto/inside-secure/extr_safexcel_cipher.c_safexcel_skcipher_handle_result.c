
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int cryptlen; int dst; int src; } ;
struct safexcel_crypto_priv {int dummy; } ;
struct safexcel_cipher_req {int needs_inv; } ;
struct crypto_async_request {int dummy; } ;


 int safexcel_handle_inv_result (struct safexcel_crypto_priv*,int,struct crypto_async_request*,struct safexcel_cipher_req*,int*,int*) ;
 int safexcel_handle_req_result (struct safexcel_crypto_priv*,int,struct crypto_async_request*,int ,int ,int ,struct safexcel_cipher_req*,int*,int*) ;
 struct skcipher_request* skcipher_request_cast (struct crypto_async_request*) ;
 struct safexcel_cipher_req* skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static int safexcel_skcipher_handle_result(struct safexcel_crypto_priv *priv,
        int ring,
        struct crypto_async_request *async,
        bool *should_complete, int *ret)
{
 struct skcipher_request *req = skcipher_request_cast(async);
 struct safexcel_cipher_req *sreq = skcipher_request_ctx(req);
 int err;

 if (sreq->needs_inv) {
  sreq->needs_inv = 0;
  err = safexcel_handle_inv_result(priv, ring, async, sreq,
       should_complete, ret);
 } else {
  err = safexcel_handle_req_result(priv, ring, async, req->src,
       req->dst, req->cryptlen, sreq,
       should_complete, ret);
 }

 return err;
}
