
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hifn_request_context {int dummy; } ;
struct hifn_crypto_alg {int dev; } ;
struct hifn_context {int dev; } ;
struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; struct crypto_alg* __crt_alg; } ;
struct crypto_alg {int dummy; } ;


 struct hifn_crypto_alg* crypto_alg_to_hifn (struct crypto_alg*) ;
 struct hifn_context* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int hifn_cra_init(struct crypto_tfm *tfm)
{
 struct crypto_alg *alg = tfm->__crt_alg;
 struct hifn_crypto_alg *ha = crypto_alg_to_hifn(alg);
 struct hifn_context *ctx = crypto_tfm_ctx(tfm);

 ctx->dev = ha->dev;
 tfm->crt_ablkcipher.reqsize = sizeof(struct hifn_request_context);
 return 0;
}
