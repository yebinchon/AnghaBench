
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_panel {int enabled; int backlight; struct mipi_dsi_device* dsi; } ;
struct device {int dummy; } ;
struct mipi_dsi_device {int mode_flags; struct device dev; } ;
struct drm_panel {int dummy; } ;


 int DRM_DEV_ERROR (struct device*,char*,int) ;
 int MIPI_DSI_MODE_LPM ;
 int backlight_disable (int ) ;
 int mipi_dsi_dcs_enter_sleep_mode (struct mipi_dsi_device*) ;
 int mipi_dsi_dcs_set_display_off (struct mipi_dsi_device*) ;
 struct rad_panel* to_rad_panel (struct drm_panel*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rad_panel_disable(struct drm_panel *panel)
{
 struct rad_panel *rad = to_rad_panel(panel);
 struct mipi_dsi_device *dsi = rad->dsi;
 struct device *dev = &dsi->dev;
 int ret;

 if (!rad->enabled)
  return 0;

 dsi->mode_flags |= MIPI_DSI_MODE_LPM;

 backlight_disable(rad->backlight);

 usleep_range(10000, 12000);

 ret = mipi_dsi_dcs_set_display_off(dsi);
 if (ret < 0) {
  DRM_DEV_ERROR(dev, "Failed to set display OFF (%d)\n", ret);
  return ret;
 }

 usleep_range(5000, 10000);

 ret = mipi_dsi_dcs_enter_sleep_mode(dsi);
 if (ret < 0) {
  DRM_DEV_ERROR(dev, "Failed to enter sleep mode (%d)\n", ret);
  return ret;
 }

 rad->enabled = 0;

 return 0;
}
