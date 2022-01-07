
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stm32_cryp_reqctx {int dummy; } ;
struct TYPE_5__ {int * unprepare_request; int prepare_request; int do_one_request; } ;
struct TYPE_6__ {TYPE_2__ op; } ;
struct stm32_cryp_ctx {TYPE_3__ enginectx; } ;
struct TYPE_4__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;


 struct stm32_cryp_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int stm32_cryp_cipher_one_req ;
 int stm32_cryp_prepare_cipher_req ;

__attribute__((used)) static int stm32_cryp_cra_init(struct crypto_tfm *tfm)
{
 struct stm32_cryp_ctx *ctx = crypto_tfm_ctx(tfm);

 tfm->crt_ablkcipher.reqsize = sizeof(struct stm32_cryp_reqctx);

 ctx->enginectx.op.do_one_request = stm32_cryp_cipher_one_req;
 ctx->enginectx.op.prepare_request = stm32_cryp_prepare_cipher_req;
 ctx->enginectx.op.unprepare_request = ((void*)0);
 return 0;
}
