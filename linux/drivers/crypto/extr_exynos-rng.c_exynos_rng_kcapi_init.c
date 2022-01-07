
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_rng_ctx {int rng; } ;
struct crypto_tfm {int dummy; } ;


 struct exynos_rng_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int exynos_rng_dev ;

__attribute__((used)) static int exynos_rng_kcapi_init(struct crypto_tfm *tfm)
{
 struct exynos_rng_ctx *ctx = crypto_tfm_ctx(tfm);

 ctx->rng = exynos_rng_dev;

 return 0;
}
