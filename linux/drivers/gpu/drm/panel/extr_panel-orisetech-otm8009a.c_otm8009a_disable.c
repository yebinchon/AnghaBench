
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otm8009a {int enabled; int bl_dev; int dev; } ;
struct mipi_dsi_device {int dummy; } ;
struct drm_panel {int dummy; } ;


 int backlight_disable (int ) ;
 int mipi_dsi_dcs_enter_sleep_mode (struct mipi_dsi_device*) ;
 int mipi_dsi_dcs_set_display_off (struct mipi_dsi_device*) ;
 int msleep (int) ;
 struct otm8009a* panel_to_otm8009a (struct drm_panel*) ;
 struct mipi_dsi_device* to_mipi_dsi_device (int ) ;

__attribute__((used)) static int otm8009a_disable(struct drm_panel *panel)
{
 struct otm8009a *ctx = panel_to_otm8009a(panel);
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
 int ret;

 if (!ctx->enabled)
  return 0;

 backlight_disable(ctx->bl_dev);

 ret = mipi_dsi_dcs_set_display_off(dsi);
 if (ret)
  return ret;

 ret = mipi_dsi_dcs_enter_sleep_mode(dsi);
 if (ret)
  return ret;

 msleep(120);

 ctx->enabled = 0;

 return 0;
}
