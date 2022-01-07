
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct mipi_dsi_device {int mode_flags; struct device dev; } ;
struct jdi_panel {struct mipi_dsi_device* dsi; } ;


 int MIPI_DSI_MODE_LPM ;
 int dev_err (struct device*,char*,int) ;
 int mipi_dsi_dcs_set_display_on (struct mipi_dsi_device*) ;

__attribute__((used)) static int jdi_panel_on(struct jdi_panel *jdi)
{
 struct mipi_dsi_device *dsi = jdi->dsi;
 struct device *dev = &jdi->dsi->dev;
 int ret;

 dsi->mode_flags |= MIPI_DSI_MODE_LPM;

 ret = mipi_dsi_dcs_set_display_on(dsi);
 if (ret < 0)
  dev_err(dev, "failed to set display on: %d\n", ret);

 return ret;
}
