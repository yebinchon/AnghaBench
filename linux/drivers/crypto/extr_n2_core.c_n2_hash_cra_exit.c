
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n2_hash_ctx {int fallback_tfm; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ahash {int dummy; } ;


 struct crypto_ahash* __crypto_ahash_cast (struct crypto_tfm*) ;
 struct n2_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int crypto_free_ahash (int ) ;

__attribute__((used)) static void n2_hash_cra_exit(struct crypto_tfm *tfm)
{
 struct crypto_ahash *ahash = __crypto_ahash_cast(tfm);
 struct n2_hash_ctx *ctx = crypto_ahash_ctx(ahash);

 crypto_free_ahash(ctx->fallback_tfm);
}
