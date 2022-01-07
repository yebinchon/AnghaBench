
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dsi {int enabled; scalar_t__ panel; } ;


 int DRM_ERROR (char*) ;
 scalar_t__ drm_panel_enable (scalar_t__) ;
 int mtk_dsi_clk_hs_mode (struct mtk_dsi*,int) ;
 int mtk_dsi_poweroff (struct mtk_dsi*) ;
 int mtk_dsi_poweron (struct mtk_dsi*) ;
 int mtk_dsi_set_mode (struct mtk_dsi*) ;
 int mtk_dsi_start (struct mtk_dsi*) ;
 int mtk_dsi_stop (struct mtk_dsi*) ;

__attribute__((used)) static void mtk_output_dsi_enable(struct mtk_dsi *dsi)
{
 int ret;

 if (dsi->enabled)
  return;

 ret = mtk_dsi_poweron(dsi);
 if (ret < 0) {
  DRM_ERROR("failed to power on dsi\n");
  return;
 }

 mtk_dsi_set_mode(dsi);
 mtk_dsi_clk_hs_mode(dsi, 1);

 mtk_dsi_start(dsi);

 if (dsi->panel) {
  if (drm_panel_enable(dsi->panel)) {
   DRM_ERROR("failed to enable the panel\n");
   goto err_dsi_power_off;
  }
 }

 dsi->enabled = 1;

 return;
err_dsi_power_off:
 mtk_dsi_stop(dsi);
 mtk_dsi_poweroff(dsi);
}
