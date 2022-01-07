
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_sha_reqctx {int dummy; } ;
struct mtk_sha_hmac_ctx {int shash; } ;
struct mtk_sha_ctx {int flags; struct mtk_sha_hmac_ctx* base; } ;
struct mtk_cryp {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 int CRYPTO_ALG_NEED_FALLBACK ;
 int ENODEV ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SHA_FLAGS_HMAC ;
 int __crypto_ahash_cast (struct crypto_tfm*) ;
 int crypto_ahash_set_reqsize (int ,int) ;
 int crypto_alloc_shash (char const*,int ,int ) ;
 struct mtk_sha_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 struct mtk_cryp* mtk_sha_find_dev (struct mtk_sha_ctx*) ;
 int pr_err (char*,char const*) ;

__attribute__((used)) static int mtk_sha_cra_init_alg(struct crypto_tfm *tfm,
    const char *alg_base)
{
 struct mtk_sha_ctx *tctx = crypto_tfm_ctx(tfm);
 struct mtk_cryp *cryp = ((void*)0);

 cryp = mtk_sha_find_dev(tctx);
 if (!cryp)
  return -ENODEV;

 crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
     sizeof(struct mtk_sha_reqctx));

 if (alg_base) {
  struct mtk_sha_hmac_ctx *bctx = tctx->base;

  tctx->flags |= SHA_FLAGS_HMAC;
  bctx->shash = crypto_alloc_shash(alg_base, 0,
     CRYPTO_ALG_NEED_FALLBACK);
  if (IS_ERR(bctx->shash)) {
   pr_err("base driver %s could not be loaded.\n",
          alg_base);

   return PTR_ERR(bctx->shash);
  }
 }
 return 0;
}
