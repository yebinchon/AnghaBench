
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qcom_rng_ctx {TYPE_1__* rng; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_3__ {int skip_init; } ;


 struct qcom_rng_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 TYPE_1__* qcom_rng_dev ;
 int qcom_rng_enable (TYPE_1__*) ;

__attribute__((used)) static int qcom_rng_init(struct crypto_tfm *tfm)
{
 struct qcom_rng_ctx *ctx = crypto_tfm_ctx(tfm);

 ctx->rng = qcom_rng_dev;

 if (!ctx->rng->skip_init)
  return qcom_rng_enable(ctx->rng);

 return 0;
}
