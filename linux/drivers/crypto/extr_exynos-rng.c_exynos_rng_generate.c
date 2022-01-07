
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct exynos_rng_dev {int clk; int lock; } ;
struct exynos_rng_ctx {struct exynos_rng_dev* rng; } ;
struct crypto_rng {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct exynos_rng_ctx* crypto_rng_ctx (struct crypto_rng*) ;
 int exynos_rng_get_random (struct exynos_rng_dev*,int *,unsigned int,unsigned int*) ;
 int exynos_rng_reseed (struct exynos_rng_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int exynos_rng_generate(struct crypto_rng *tfm,
          const u8 *src, unsigned int slen,
          u8 *dst, unsigned int dlen)
{
 struct exynos_rng_ctx *ctx = crypto_rng_ctx(tfm);
 struct exynos_rng_dev *rng = ctx->rng;
 unsigned int read = 0;
 int ret;

 ret = clk_prepare_enable(rng->clk);
 if (ret)
  return ret;

 mutex_lock(&rng->lock);
 do {
  ret = exynos_rng_get_random(rng, dst, dlen, &read);
  if (ret)
   break;

  dlen -= read;
  dst += read;

  exynos_rng_reseed(rng);
 } while (dlen > 0);
 mutex_unlock(&rng->lock);

 clk_disable_unprepare(rng->clk);

 return ret;
}
