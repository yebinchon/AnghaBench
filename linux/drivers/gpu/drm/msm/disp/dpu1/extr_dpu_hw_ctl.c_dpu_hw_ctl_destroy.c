
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_hw_ctl {int base; } ;


 int dpu_hw_blk_destroy (int *) ;
 int kfree (struct dpu_hw_ctl*) ;

void dpu_hw_ctl_destroy(struct dpu_hw_ctl *ctx)
{
 if (ctx)
  dpu_hw_blk_destroy(&ctx->base);
 kfree(ctx);
}
