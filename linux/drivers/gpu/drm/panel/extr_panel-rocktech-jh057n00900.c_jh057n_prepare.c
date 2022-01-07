
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jh057n {int prepared; int vcc; int reset_gpio; int dev; int iovcc; } ;
struct drm_panel {int dummy; } ;


 int DRM_DEV_DEBUG_DRIVER (int ,char*) ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int msleep (int) ;
 struct jh057n* panel_to_jh057n (struct drm_panel*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int jh057n_prepare(struct drm_panel *panel)
{
 struct jh057n *ctx = panel_to_jh057n(panel);
 int ret;

 if (ctx->prepared)
  return 0;

 DRM_DEV_DEBUG_DRIVER(ctx->dev, "Resetting the panel\n");
 ret = regulator_enable(ctx->vcc);
 if (ret < 0) {
  DRM_DEV_ERROR(ctx->dev,
         "Failed to enable vcc supply: %d\n", ret);
  return ret;
 }
 ret = regulator_enable(ctx->iovcc);
 if (ret < 0) {
  DRM_DEV_ERROR(ctx->dev,
         "Failed to enable iovcc supply: %d\n", ret);
  goto disable_vcc;
 }

 gpiod_set_value_cansleep(ctx->reset_gpio, 1);
 usleep_range(20, 40);
 gpiod_set_value_cansleep(ctx->reset_gpio, 0);
 msleep(20);

 ctx->prepared = 1;

 return 0;

disable_vcc:
 regulator_disable(ctx->vcc);
 return ret;
}
