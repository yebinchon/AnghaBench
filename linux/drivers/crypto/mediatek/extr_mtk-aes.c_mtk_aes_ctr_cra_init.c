
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_aes_reqctx {int dummy; } ;
struct TYPE_4__ {int start; } ;
struct mtk_aes_ctx {TYPE_2__ base; } ;
struct TYPE_3__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;


 struct mtk_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int mtk_aes_ctr_start ;

__attribute__((used)) static int mtk_aes_ctr_cra_init(struct crypto_tfm *tfm)
{
 struct mtk_aes_ctx *ctx = crypto_tfm_ctx(tfm);

 tfm->crt_ablkcipher.reqsize = sizeof(struct mtk_aes_reqctx);
 ctx->base.start = mtk_aes_ctr_start;
 return 0;
}
