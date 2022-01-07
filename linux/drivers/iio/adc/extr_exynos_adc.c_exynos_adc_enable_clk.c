
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_adc {int dev; int clk; int sclk; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ needs_sclk; } ;


 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int exynos_adc_enable_clk(struct exynos_adc *info)
{
 int ret;

 ret = clk_enable(info->clk);
 if (ret) {
  dev_err(info->dev, "failed enabling adc clock: %d\n", ret);
  return ret;
 }

 if (info->data->needs_sclk) {
  ret = clk_enable(info->sclk);
  if (ret) {
   clk_disable(info->clk);
   dev_err(info->dev,
    "failed enabling sclk_adc clock: %d\n", ret);
   return ret;
  }
 }

 return 0;
}
