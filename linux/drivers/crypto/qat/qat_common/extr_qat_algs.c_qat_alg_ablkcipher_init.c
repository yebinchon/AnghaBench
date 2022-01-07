
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qat_crypto_request {int dummy; } ;
struct qat_alg_ablkcipher_ctx {struct crypto_tfm* tfm; } ;
struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;


 struct qat_alg_ablkcipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static int qat_alg_ablkcipher_init(struct crypto_tfm *tfm)
{
 struct qat_alg_ablkcipher_ctx *ctx = crypto_tfm_ctx(tfm);

 tfm->crt_ablkcipher.reqsize = sizeof(struct qat_crypto_request);
 ctx->tfm = tfm;
 return 0;
}
