
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e63m0 {int supplies; int reset_gpio; } ;


 int ARRAY_SIZE (int ) ;
 int gpiod_set_value (int ,int) ;
 int msleep (int) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int s6e63m0_power_off(struct s6e63m0 *ctx)
{
 int ret;

 gpiod_set_value(ctx->reset_gpio, 1);
 msleep(120);

 ret = regulator_bulk_disable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
 if (ret < 0)
  return ret;

 return 0;
}
