
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int reset; int power; } ;
struct rb070d30_panel {TYPE_2__ gpios; TYPE_1__* dsi; int supply; } ;
struct drm_panel {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int DRM_DEV_ERROR (int *,char*,int) ;
 int gpiod_set_value (int ,int) ;
 int msleep (int) ;
 struct rb070d30_panel* panel_to_rb070d30_panel (struct drm_panel*) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int rb070d30_panel_prepare(struct drm_panel *panel)
{
 struct rb070d30_panel *ctx = panel_to_rb070d30_panel(panel);
 int ret;

 ret = regulator_enable(ctx->supply);
 if (ret < 0) {
  DRM_DEV_ERROR(&ctx->dsi->dev, "Failed to enable supply: %d\n", ret);
  return ret;
 }

 msleep(20);
 gpiod_set_value(ctx->gpios.power, 1);
 msleep(20);
 gpiod_set_value(ctx->gpios.reset, 1);
 msleep(20);
 return 0;
}
