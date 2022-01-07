
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_aes_reqctx {int dummy; } ;
struct s5p_aes_ctx {int dev; } ;
struct TYPE_2__ {int reqsize; } ;
struct crypto_tfm {TYPE_1__ crt_ablkcipher; } ;


 struct s5p_aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int s5p_dev ;

__attribute__((used)) static int s5p_aes_cra_init(struct crypto_tfm *tfm)
{
 struct s5p_aes_ctx *ctx = crypto_tfm_ctx(tfm);

 ctx->dev = s5p_dev;
 tfm->crt_ablkcipher.reqsize = sizeof(struct s5p_aes_reqctx);

 return 0;
}
