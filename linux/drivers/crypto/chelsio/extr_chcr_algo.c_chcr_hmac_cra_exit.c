
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hmac_ctx {int * base_hash; } ;
struct crypto_tfm {int dummy; } ;
struct chcr_context {int dummy; } ;


 struct hmac_ctx* HMAC_CTX (struct chcr_context*) ;
 int chcr_free_shash (int *) ;
 struct chcr_context* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void chcr_hmac_cra_exit(struct crypto_tfm *tfm)
{
 struct chcr_context *ctx = crypto_tfm_ctx(tfm);
 struct hmac_ctx *hmacctx = HMAC_CTX(ctx);

 if (hmacctx->base_hash) {
  chcr_free_shash(hmacctx->base_hash);
  hmacctx->base_hash = ((void*)0);
 }
}
