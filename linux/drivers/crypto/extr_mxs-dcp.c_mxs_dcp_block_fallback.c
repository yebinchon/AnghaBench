
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dcp_async_ctx {int fallback; } ;
struct crypto_ablkcipher {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct ablkcipher_request {int info; int nbytes; int dst; int src; TYPE_1__ base; } ;


 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,int ) ;
 struct dcp_async_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int crypto_skcipher_decrypt (int ) ;
 int crypto_skcipher_encrypt (int ) ;
 int skcipher_request_set_callback (int ,int ,int *,int *) ;
 int skcipher_request_set_crypt (int ,int ,int ,int ,int ) ;
 int skcipher_request_set_sync_tfm (int ,int ) ;
 int skcipher_request_zero (int ) ;
 int subreq ;

__attribute__((used)) static int mxs_dcp_block_fallback(struct ablkcipher_request *req, int enc)
{
 struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
 struct dcp_async_ctx *ctx = crypto_ablkcipher_ctx(tfm);
 SYNC_SKCIPHER_REQUEST_ON_STACK(subreq, ctx->fallback);
 int ret;

 skcipher_request_set_sync_tfm(subreq, ctx->fallback);
 skcipher_request_set_callback(subreq, req->base.flags, ((void*)0), ((void*)0));
 skcipher_request_set_crypt(subreq, req->src, req->dst,
       req->nbytes, req->info);

 if (enc)
  ret = crypto_skcipher_encrypt(subreq);
 else
  ret = crypto_skcipher_decrypt(subreq);

 skcipher_request_zero(subreq);

 return ret;
}
