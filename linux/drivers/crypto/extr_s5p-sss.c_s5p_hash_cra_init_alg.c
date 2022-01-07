
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_hash_reqctx {int dummy; } ;
struct s5p_hash_ctx {int fallback; int dd; } ;
struct crypto_tfm {int dummy; } ;


 scalar_t__ BUFLEN ;
 int CRYPTO_ALG_NEED_FALLBACK ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int __crypto_ahash_cast (struct crypto_tfm*) ;
 int crypto_ahash_set_reqsize (int ,scalar_t__) ;
 int crypto_alloc_shash (char const*,int ,int ) ;
 char* crypto_tfm_alg_name (struct crypto_tfm*) ;
 struct s5p_hash_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int pr_err (char*,char const*) ;
 int s5p_dev ;

__attribute__((used)) static int s5p_hash_cra_init_alg(struct crypto_tfm *tfm)
{
 struct s5p_hash_ctx *tctx = crypto_tfm_ctx(tfm);
 const char *alg_name = crypto_tfm_alg_name(tfm);

 tctx->dd = s5p_dev;

 tctx->fallback = crypto_alloc_shash(alg_name, 0,
         CRYPTO_ALG_NEED_FALLBACK);
 if (IS_ERR(tctx->fallback)) {
  pr_err("fallback alloc fails for '%s'\n", alg_name);
  return PTR_ERR(tctx->fallback);
 }

 crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
     sizeof(struct s5p_hash_reqctx) + BUFLEN);

 return 0;
}
