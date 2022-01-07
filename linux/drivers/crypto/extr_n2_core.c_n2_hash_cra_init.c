
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n2_hash_req_ctx {int dummy; } ;
struct n2_hash_ctx {struct crypto_ahash* fallback_tfm; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ahash {int dummy; } ;


 int CRYPTO_ALG_NEED_FALLBACK ;
 scalar_t__ IS_ERR (struct crypto_ahash*) ;
 int PTR_ERR (struct crypto_ahash*) ;
 struct crypto_ahash* __crypto_ahash_cast (struct crypto_tfm*) ;
 struct n2_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 scalar_t__ crypto_ahash_reqsize (struct crypto_ahash*) ;
 int crypto_ahash_set_reqsize (struct crypto_ahash*,scalar_t__) ;
 struct crypto_ahash* crypto_alloc_ahash (char const*,int ,int ) ;
 char* crypto_tfm_alg_name (struct crypto_tfm*) ;
 int pr_warning (char*,char const*) ;

__attribute__((used)) static int n2_hash_cra_init(struct crypto_tfm *tfm)
{
 const char *fallback_driver_name = crypto_tfm_alg_name(tfm);
 struct crypto_ahash *ahash = __crypto_ahash_cast(tfm);
 struct n2_hash_ctx *ctx = crypto_ahash_ctx(ahash);
 struct crypto_ahash *fallback_tfm;
 int err;

 fallback_tfm = crypto_alloc_ahash(fallback_driver_name, 0,
       CRYPTO_ALG_NEED_FALLBACK);
 if (IS_ERR(fallback_tfm)) {
  pr_warning("Fallback driver '%s' could not be loaded!\n",
      fallback_driver_name);
  err = PTR_ERR(fallback_tfm);
  goto out;
 }

 crypto_ahash_set_reqsize(ahash, (sizeof(struct n2_hash_req_ctx) +
      crypto_ahash_reqsize(fallback_tfm)));

 ctx->fallback_tfm = fallback_tfm;
 return 0;

out:
 return err;
}
