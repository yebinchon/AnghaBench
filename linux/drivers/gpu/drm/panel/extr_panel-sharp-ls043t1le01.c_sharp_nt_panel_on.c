
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sharp_nt_panel {struct mipi_dsi_device* dsi; } ;
struct mipi_dsi_device {int mode_flags; } ;


 int MIPI_DSI_MODE_LPM ;
 int mipi_dsi_dcs_set_display_on (struct mipi_dsi_device*) ;

__attribute__((used)) static int sharp_nt_panel_on(struct sharp_nt_panel *sharp_nt)
{
 struct mipi_dsi_device *dsi = sharp_nt->dsi;
 int ret;

 dsi->mode_flags |= MIPI_DSI_MODE_LPM;

 ret = mipi_dsi_dcs_set_display_on(dsi);
 if (ret < 0)
  return ret;

 return 0;
}
