
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int cryptlen; int dst; int base; } ;
struct crypto_skcipher {int dummy; } ;
struct artpec6_cryptotfm_context {int crypto_type; } ;
struct artpec6_crypto_request_context {int decrypt; int common; } ;





 int artpec6_crypto_common_destroy (int *) ;
 int artpec6_crypto_common_init (int *,int *,void (*) (struct crypto_async_request*),int ,int ) ;
 void artpec6_crypto_complete_cbc_decrypt (struct crypto_async_request*) ;
 void artpec6_crypto_complete_crypto (struct crypto_async_request*) ;
 int artpec6_crypto_prepare_crypto (struct skcipher_request*) ;
 int artpec6_crypto_submit (int *) ;
 struct artpec6_cryptotfm_context* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 struct artpec6_crypto_request_context* skcipher_request_ctx (struct skcipher_request*) ;

__attribute__((used)) static int artpec6_crypto_decrypt(struct skcipher_request *req)
{
 int ret;
 struct crypto_skcipher *cipher = crypto_skcipher_reqtfm(req);
 struct artpec6_cryptotfm_context *ctx = crypto_skcipher_ctx(cipher);
 struct artpec6_crypto_request_context *req_ctx = ((void*)0);
 void (*complete)(struct crypto_async_request *req);

 req_ctx = skcipher_request_ctx(req);

 switch (ctx->crypto_type) {
 case 130:
 case 129:
 case 128:
  req_ctx->decrypt = 1;
  break;
 default:
  break;
 }


 switch (ctx->crypto_type) {
 case 130:
  complete = artpec6_crypto_complete_cbc_decrypt;
  break;
 default:
  complete = artpec6_crypto_complete_crypto;
  break;
 }

 ret = artpec6_crypto_common_init(&req_ctx->common, &req->base,
      complete,
      req->dst, req->cryptlen);
 if (ret)
  return ret;

 ret = artpec6_crypto_prepare_crypto(req);
 if (ret) {
  artpec6_crypto_common_destroy(&req_ctx->common);
  return ret;
 }

 return artpec6_crypto_submit(&req_ctx->common);
}
