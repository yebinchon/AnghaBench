
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct mipi_dsi_device {int mode_flags; struct device dev; } ;
struct jdi_panel {struct mipi_dsi_device* dsi; } ;


 int MIPI_DSI_MODE_LPM ;
 int dev_err (struct device*,char*,int) ;
 int mipi_dsi_dcs_enter_sleep_mode (struct mipi_dsi_device*) ;
 int mipi_dsi_dcs_set_display_off (struct mipi_dsi_device*) ;
 int msleep (int) ;

__attribute__((used)) static void jdi_panel_off(struct jdi_panel *jdi)
{
 struct mipi_dsi_device *dsi = jdi->dsi;
 struct device *dev = &jdi->dsi->dev;
 int ret;

 dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;

 ret = mipi_dsi_dcs_set_display_off(dsi);
 if (ret < 0)
  dev_err(dev, "failed to set display off: %d\n", ret);

 ret = mipi_dsi_dcs_enter_sleep_mode(dsi);
 if (ret < 0)
  dev_err(dev, "failed to enter sleep mode: %d\n", ret);

 msleep(100);
}
