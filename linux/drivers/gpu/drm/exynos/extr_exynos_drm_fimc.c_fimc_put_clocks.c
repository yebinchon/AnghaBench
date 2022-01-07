
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_context {int * clocks; } ;


 int EINVAL ;
 int ERR_PTR (int ) ;
 int FIMC_CLKS_MAX ;
 scalar_t__ IS_ERR (int ) ;
 int clk_put (int ) ;

__attribute__((used)) static void fimc_put_clocks(struct fimc_context *ctx)
{
 int i;

 for (i = 0; i < FIMC_CLKS_MAX; i++) {
  if (IS_ERR(ctx->clocks[i]))
   continue;
  clk_put(ctx->clocks[i]);
  ctx->clocks[i] = ERR_PTR(-EINVAL);
 }
}
