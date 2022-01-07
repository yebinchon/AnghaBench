
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_hmac_ctx {int * shash; } ;
struct omap_sham_ctx {int flags; struct omap_sham_hmac_ctx* base; int * fallback; } ;
struct crypto_tfm {int dummy; } ;


 int BIT (int ) ;
 int FLAGS_HMAC ;
 int crypto_free_shash (int *) ;
 struct omap_sham_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void omap_sham_cra_exit(struct crypto_tfm *tfm)
{
 struct omap_sham_ctx *tctx = crypto_tfm_ctx(tfm);

 crypto_free_shash(tctx->fallback);
 tctx->fallback = ((void*)0);

 if (tctx->flags & BIT(FLAGS_HMAC)) {
  struct omap_sham_hmac_ctx *bctx = tctx->base;
  crypto_free_shash(bctx->shash);
 }
}
