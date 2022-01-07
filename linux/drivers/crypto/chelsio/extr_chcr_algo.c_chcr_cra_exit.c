
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct chcr_context {int dummy; } ;
struct ablk_ctx {int sw_cipher; } ;


 struct ablk_ctx* ABLK_CTX (struct chcr_context*) ;
 int crypto_free_sync_skcipher (int ) ;
 struct chcr_context* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void chcr_cra_exit(struct crypto_tfm *tfm)
{
 struct chcr_context *ctx = crypto_tfm_ctx(tfm);
 struct ablk_ctx *ablkctx = ABLK_CTX(ctx);

 crypto_free_sync_skcipher(ablkctx->sw_cipher);
}
