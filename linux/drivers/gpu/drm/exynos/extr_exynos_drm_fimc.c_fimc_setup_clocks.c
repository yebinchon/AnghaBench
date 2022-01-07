
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_context {int * clocks; struct device* dev; } ;
struct device {struct device* parent; } ;


 int EINVAL ;
 int ERR_PTR (int ) ;
 int FIMC_CLKS_MAX ;
 size_t FIMC_CLK_LCLK ;
 int FIMC_CLK_WB_A ;
 int FIMC_CLK_WB_B ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_get (struct device*,int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,int ) ;
 int * fimc_clock_names ;
 int fimc_put_clocks (struct fimc_context*) ;

__attribute__((used)) static int fimc_setup_clocks(struct fimc_context *ctx)
{
 struct device *fimc_dev = ctx->dev;
 struct device *dev;
 int ret, i;

 for (i = 0; i < FIMC_CLKS_MAX; i++)
  ctx->clocks[i] = ERR_PTR(-EINVAL);

 for (i = 0; i < FIMC_CLKS_MAX; i++) {
  if (i == FIMC_CLK_WB_A || i == FIMC_CLK_WB_B)
   dev = fimc_dev->parent;
  else
   dev = fimc_dev;

  ctx->clocks[i] = clk_get(dev, fimc_clock_names[i]);
  if (IS_ERR(ctx->clocks[i])) {
   ret = PTR_ERR(ctx->clocks[i]);
   dev_err(fimc_dev, "failed to get clock: %s\n",
      fimc_clock_names[i]);
   goto e_clk_free;
  }
 }

 ret = clk_prepare_enable(ctx->clocks[FIMC_CLK_LCLK]);
 if (!ret)
  return ret;
e_clk_free:
 fimc_put_clocks(ctx);
 return ret;
}
