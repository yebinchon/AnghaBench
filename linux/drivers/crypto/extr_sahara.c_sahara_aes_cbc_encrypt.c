
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sahara_ctx {scalar_t__ keylen; int fallback; } ;
struct TYPE_2__ {int flags; } ;
struct ablkcipher_request {int info; int nbytes; int dst; int src; TYPE_1__ base; } ;


 scalar_t__ AES_KEYSIZE_128 ;
 int FLAGS_CBC ;
 int FLAGS_ENCRYPT ;
 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,int ) ;
 struct sahara_ctx* crypto_ablkcipher_ctx (int ) ;
 int crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int crypto_skcipher_encrypt (int ) ;
 int sahara_aes_crypt (struct ablkcipher_request*,int) ;
 int skcipher_request_set_callback (int ,int ,int *,int *) ;
 int skcipher_request_set_crypt (int ,int ,int ,int ,int ) ;
 int skcipher_request_set_sync_tfm (int ,int ) ;
 int skcipher_request_zero (int ) ;
 int subreq ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sahara_aes_cbc_encrypt(struct ablkcipher_request *req)
{
 struct sahara_ctx *ctx = crypto_ablkcipher_ctx(
  crypto_ablkcipher_reqtfm(req));
 int err;

 if (unlikely(ctx->keylen != AES_KEYSIZE_128)) {
  SYNC_SKCIPHER_REQUEST_ON_STACK(subreq, ctx->fallback);

  skcipher_request_set_sync_tfm(subreq, ctx->fallback);
  skcipher_request_set_callback(subreq, req->base.flags,
           ((void*)0), ((void*)0));
  skcipher_request_set_crypt(subreq, req->src, req->dst,
        req->nbytes, req->info);
  err = crypto_skcipher_encrypt(subreq);
  skcipher_request_zero(subreq);
  return err;
 }

 return sahara_aes_crypt(req, FLAGS_ENCRYPT | FLAGS_CBC);
}
