
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct truly_nt35597 {int dev; TYPE_1__* supplies; int reset_gpio; } ;
struct TYPE_3__ {int consumer; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int gpiod_set_value (int ,int) ;
 int regulator_bulk_disable (int,TYPE_1__*) ;
 int * regulator_disable_loads ;
 int regulator_set_load (int ,int ) ;

__attribute__((used)) static int truly_nt35597_power_off(struct truly_nt35597 *ctx)
{
 int ret = 0;
 int i;

 gpiod_set_value(ctx->reset_gpio, 1);

 for (i = 0; i < ARRAY_SIZE(ctx->supplies); i++) {
  ret = regulator_set_load(ctx->supplies[i].consumer,
    regulator_disable_loads[i]);
  if (ret) {
   DRM_DEV_ERROR(ctx->dev,
    "regulator_set_load failed %d\n", ret);
   return ret;
  }
 }

 ret = regulator_bulk_disable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
 if (ret) {
  DRM_DEV_ERROR(ctx->dev,
   "regulator_bulk_disable failed %d\n", ret);
 }
 return ret;
}
