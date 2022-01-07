
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rm68200 {int prepared; int supply; scalar_t__ reset_gpio; int dev; } ;
struct mipi_dsi_device {int dummy; } ;
struct drm_panel {int dummy; } ;


 int DRM_WARN (char*,int) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int mipi_dsi_dcs_enter_sleep_mode (struct mipi_dsi_device*) ;
 int mipi_dsi_dcs_set_display_off (struct mipi_dsi_device*) ;
 int msleep (int) ;
 struct rm68200* panel_to_rm68200 (struct drm_panel*) ;
 int regulator_disable (int ) ;
 struct mipi_dsi_device* to_mipi_dsi_device (int ) ;

__attribute__((used)) static int rm68200_unprepare(struct drm_panel *panel)
{
 struct rm68200 *ctx = panel_to_rm68200(panel);
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
 int ret;

 if (!ctx->prepared)
  return 0;

 ret = mipi_dsi_dcs_set_display_off(dsi);
 if (ret)
  DRM_WARN("failed to set display off: %d\n", ret);

 ret = mipi_dsi_dcs_enter_sleep_mode(dsi);
 if (ret)
  DRM_WARN("failed to enter sleep mode: %d\n", ret);

 msleep(120);

 if (ctx->reset_gpio) {
  gpiod_set_value_cansleep(ctx->reset_gpio, 1);
  msleep(20);
 }

 regulator_disable(ctx->supply);

 ctx->prepared = 0;

 return 0;
}
