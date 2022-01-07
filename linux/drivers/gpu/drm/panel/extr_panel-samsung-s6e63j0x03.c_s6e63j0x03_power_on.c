
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e63j0x03 {int reset_gpio; int supplies; } ;


 int ARRAY_SIZE (int ) ;
 int gpiod_set_value (int ,int) ;
 int msleep (int) ;
 int regulator_bulk_enable (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int s6e63j0x03_power_on(struct s6e63j0x03 *ctx)
{
 int ret;

 ret = regulator_bulk_enable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
 if (ret < 0)
  return ret;

 msleep(30);

 gpiod_set_value(ctx->reset_gpio, 1);
 usleep_range(1000, 2000);
 gpiod_set_value(ctx->reset_gpio, 0);
 usleep_range(5000, 6000);

 return 0;
}
