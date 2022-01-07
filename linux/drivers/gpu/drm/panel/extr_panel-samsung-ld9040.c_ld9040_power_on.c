
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ld9040 {int reset_delay; int reset_gpio; int power_on_delay; int supplies; } ;


 int ARRAY_SIZE (int ) ;
 int gpiod_set_value (int ,int) ;
 int msleep (int ) ;
 int regulator_bulk_enable (int ,int ) ;

__attribute__((used)) static int ld9040_power_on(struct ld9040 *ctx)
{
 int ret;

 ret = regulator_bulk_enable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
 if (ret < 0)
  return ret;

 msleep(ctx->power_on_delay);
 gpiod_set_value(ctx->reset_gpio, 0);
 msleep(ctx->reset_delay);
 gpiod_set_value(ctx->reset_gpio, 1);
 msleep(ctx->reset_delay);

 return 0;
}
