
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fallback_tfm; } ;
struct n2_hmac_ctx {int child_shash; TYPE_1__ base; } ;
struct crypto_tfm {int dummy; } ;
struct crypto_ahash {int dummy; } ;


 struct crypto_ahash* __crypto_ahash_cast (struct crypto_tfm*) ;
 struct n2_hmac_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int crypto_free_ahash (int ) ;
 int crypto_free_shash (int ) ;

__attribute__((used)) static void n2_hmac_cra_exit(struct crypto_tfm *tfm)
{
 struct crypto_ahash *ahash = __crypto_ahash_cast(tfm);
 struct n2_hmac_ctx *ctx = crypto_ahash_ctx(ahash);

 crypto_free_ahash(ctx->base.fallback_tfm);
 crypto_free_shash(ctx->child_shash);
}
