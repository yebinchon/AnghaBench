
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qcom_rng_ctx {struct qcom_rng* rng; } ;
struct qcom_rng {int clk; int lock; } ;
struct crypto_rng {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct qcom_rng_ctx* crypto_rng_ctx (struct crypto_rng*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qcom_rng_read (struct qcom_rng*,int *,unsigned int) ;

__attribute__((used)) static int qcom_rng_generate(struct crypto_rng *tfm,
        const u8 *src, unsigned int slen,
        u8 *dstn, unsigned int dlen)
{
 struct qcom_rng_ctx *ctx = crypto_rng_ctx(tfm);
 struct qcom_rng *rng = ctx->rng;
 int ret;

 ret = clk_prepare_enable(rng->clk);
 if (ret)
  return ret;

 mutex_lock(&rng->lock);

 ret = qcom_rng_read(rng, dstn, dlen);

 mutex_unlock(&rng->lock);
 clk_disable_unprepare(rng->clk);

 return 0;
}
