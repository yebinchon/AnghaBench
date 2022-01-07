
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct truly_nt35597 {int reset_gpio; TYPE_1__* supplies; } ;
struct TYPE_3__ {int consumer; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int gpiod_set_value (int ,int) ;
 int regulator_bulk_enable (int,TYPE_1__*) ;
 int * regulator_enable_loads ;
 int regulator_set_load (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int truly_35597_power_on(struct truly_nt35597 *ctx)
{
 int ret, i;

 for (i = 0; i < ARRAY_SIZE(ctx->supplies); i++) {
  ret = regulator_set_load(ctx->supplies[i].consumer,
     regulator_enable_loads[i]);
  if (ret)
   return ret;
 }

 ret = regulator_bulk_enable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
 if (ret < 0)
  return ret;






 gpiod_set_value(ctx->reset_gpio, 0);
 usleep_range(10000, 20000);
 gpiod_set_value(ctx->reset_gpio, 1);
 usleep_range(10000, 20000);
 gpiod_set_value(ctx->reset_gpio, 0);
 usleep_range(10000, 20000);

 return 0;
}
