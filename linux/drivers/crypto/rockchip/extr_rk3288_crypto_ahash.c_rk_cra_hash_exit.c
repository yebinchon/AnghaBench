
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk_ahash_ctx {TYPE_1__* dev; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {void (* disable_clk ) (TYPE_1__*) ;scalar_t__ addr_vir; } ;


 struct rk_ahash_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int free_page (unsigned long) ;
 void stub1 (TYPE_1__*) ;

__attribute__((used)) static void rk_cra_hash_exit(struct crypto_tfm *tfm)
{
 struct rk_ahash_ctx *tctx = crypto_tfm_ctx(tfm);

 free_page((unsigned long)tctx->dev->addr_vir);
 return tctx->dev->disable_clk(tctx->dev);
}
