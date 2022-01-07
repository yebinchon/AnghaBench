
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_reqctx {int dummy; } ;
struct omap_sham_hmac_ctx {void* shash; } ;
struct omap_sham_ctx {void* fallback; int flags; struct omap_sham_hmac_ctx* base; } ;
struct crypto_tfm {int dummy; } ;


 int BIT (int ) ;
 scalar_t__ BUFLEN ;
 int CRYPTO_ALG_NEED_FALLBACK ;
 int FLAGS_HMAC ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int __crypto_ahash_cast (struct crypto_tfm*) ;
 int crypto_ahash_set_reqsize (int ,scalar_t__) ;
 void* crypto_alloc_shash (char const*,int ,int ) ;
 int crypto_free_shash (void*) ;
 char* crypto_tfm_alg_name (struct crypto_tfm*) ;
 struct omap_sham_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int pr_err (char*,char const*) ;

__attribute__((used)) static int omap_sham_cra_init_alg(struct crypto_tfm *tfm, const char *alg_base)
{
 struct omap_sham_ctx *tctx = crypto_tfm_ctx(tfm);
 const char *alg_name = crypto_tfm_alg_name(tfm);


 tctx->fallback = crypto_alloc_shash(alg_name, 0,
         CRYPTO_ALG_NEED_FALLBACK);
 if (IS_ERR(tctx->fallback)) {
  pr_err("omap-sham: fallback driver '%s' "
    "could not be loaded.\n", alg_name);
  return PTR_ERR(tctx->fallback);
 }

 crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
     sizeof(struct omap_sham_reqctx) + BUFLEN);

 if (alg_base) {
  struct omap_sham_hmac_ctx *bctx = tctx->base;
  tctx->flags |= BIT(FLAGS_HMAC);
  bctx->shash = crypto_alloc_shash(alg_base, 0,
      CRYPTO_ALG_NEED_FALLBACK);
  if (IS_ERR(bctx->shash)) {
   pr_err("omap-sham: base driver '%s' "
     "could not be loaded.\n", alg_base);
   crypto_free_shash(tctx->fallback);
   return PTR_ERR(bctx->shash);
  }

 }

 return 0;
}
