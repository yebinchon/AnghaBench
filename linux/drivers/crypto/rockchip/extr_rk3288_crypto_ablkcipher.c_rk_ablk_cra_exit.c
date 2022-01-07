
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk_cipher_ctx {TYPE_1__* dev; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {int (* disable_clk ) (TYPE_1__*) ;scalar_t__ addr_vir; } ;


 struct rk_cipher_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int free_page (unsigned long) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void rk_ablk_cra_exit(struct crypto_tfm *tfm)
{
 struct rk_cipher_ctx *ctx = crypto_tfm_ctx(tfm);

 free_page((unsigned long)ctx->dev->addr_vir);
 ctx->dev->disable_clk(ctx->dev);
}
