
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spacc_ablk_ctx {int sw_cipher; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct ablkcipher_request {int info; int nbytes; int dst; int src; TYPE_1__ base; } ;


 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,int ) ;
 int crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 struct crypto_tfm* crypto_ablkcipher_tfm (int ) ;
 int crypto_skcipher_decrypt (int ) ;
 int crypto_skcipher_encrypt (int ) ;
 struct spacc_ablk_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int skcipher_request_set_callback (int ,int ,int *,int *) ;
 int skcipher_request_set_crypt (int ,int ,int ,int ,int ) ;
 int skcipher_request_set_sync_tfm (int ,int ) ;
 int skcipher_request_zero (int ) ;
 int subreq ;

__attribute__((used)) static int spacc_ablk_do_fallback(struct ablkcipher_request *req,
      unsigned alg_type, bool is_encrypt)
{
 struct crypto_tfm *old_tfm =
     crypto_ablkcipher_tfm(crypto_ablkcipher_reqtfm(req));
 struct spacc_ablk_ctx *ctx = crypto_tfm_ctx(old_tfm);
 SYNC_SKCIPHER_REQUEST_ON_STACK(subreq, ctx->sw_cipher);
 int err;






 skcipher_request_set_sync_tfm(subreq, ctx->sw_cipher);
 skcipher_request_set_callback(subreq, req->base.flags, ((void*)0), ((void*)0));
 skcipher_request_set_crypt(subreq, req->src, req->dst,
       req->nbytes, req->info);
 err = is_encrypt ? crypto_skcipher_encrypt(subreq) :
      crypto_skcipher_decrypt(subreq);
 skcipher_request_zero(subreq);

 return err;
}
