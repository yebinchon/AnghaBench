
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_tfm {int dummy; } ;
struct crypto_shash {int dummy; } ;
struct artpec6_hashalg_context {struct crypto_shash* child_hash; } ;
struct artpec6_hash_request_context {int dummy; } ;


 int CRYPTO_ALG_NEED_FALLBACK ;
 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int PTR_ERR (struct crypto_shash*) ;
 int __crypto_ahash_cast (struct crypto_tfm*) ;
 int crypto_ahash_set_reqsize (int ,int) ;
 struct crypto_shash* crypto_alloc_shash (char const*,int ,int ) ;
 struct artpec6_hashalg_context* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memset (struct artpec6_hashalg_context*,int ,int) ;

__attribute__((used)) static int artpec6_crypto_ahash_init_common(struct crypto_tfm *tfm,
        const char *base_hash_name)
{
 struct artpec6_hashalg_context *tfm_ctx = crypto_tfm_ctx(tfm);

 crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
     sizeof(struct artpec6_hash_request_context));
 memset(tfm_ctx, 0, sizeof(*tfm_ctx));

 if (base_hash_name) {
  struct crypto_shash *child;

  child = crypto_alloc_shash(base_hash_name, 0,
        CRYPTO_ALG_NEED_FALLBACK);

  if (IS_ERR(child))
   return PTR_ERR(child);

  tfm_ctx->child_hash = child;
 }

 return 0;
}
