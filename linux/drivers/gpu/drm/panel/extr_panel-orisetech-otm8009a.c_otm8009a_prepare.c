
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otm8009a {int prepared; scalar_t__ reset_gpio; int supply; } ;
struct drm_panel {int dummy; } ;


 int DRM_ERROR (char*,int) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int msleep (int) ;
 int otm8009a_init_sequence (struct otm8009a*) ;
 struct otm8009a* panel_to_otm8009a (struct drm_panel*) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int otm8009a_prepare(struct drm_panel *panel)
{
 struct otm8009a *ctx = panel_to_otm8009a(panel);
 int ret;

 if (ctx->prepared)
  return 0;

 ret = regulator_enable(ctx->supply);
 if (ret < 0) {
  DRM_ERROR("failed to enable supply: %d\n", ret);
  return ret;
 }

 if (ctx->reset_gpio) {
  gpiod_set_value_cansleep(ctx->reset_gpio, 0);
  gpiod_set_value_cansleep(ctx->reset_gpio, 1);
  msleep(20);
  gpiod_set_value_cansleep(ctx->reset_gpio, 0);
  msleep(100);
 }

 ret = otm8009a_init_sequence(ctx);
 if (ret)
  return ret;

 ctx->prepared = 1;

 return 0;
}
