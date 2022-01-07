
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {int gpio_reset; int clk_xtal; int supplies; } ;


 int ARRAY_SIZE (int ) ;
 int clk_prepare_enable (int ) ;
 int gpiod_set_value (int ,int ) ;
 int msleep (int) ;
 int regulator_bulk_enable (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int sii8620_hw_on(struct sii8620 *ctx)
{
 int ret;

 ret = regulator_bulk_enable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
 if (ret)
  return ret;

 usleep_range(10000, 20000);
 ret = clk_prepare_enable(ctx->clk_xtal);
 if (ret)
  return ret;

 msleep(100);
 gpiod_set_value(ctx->gpio_reset, 0);
 msleep(100);

 return 0;
}
