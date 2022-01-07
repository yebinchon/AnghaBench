
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dsi {int enabled; scalar_t__ panel; } ;


 int DRM_ERROR (char*) ;
 scalar_t__ drm_panel_disable (scalar_t__) ;
 int mtk_dsi_poweroff (struct mtk_dsi*) ;

__attribute__((used)) static void mtk_output_dsi_disable(struct mtk_dsi *dsi)
{
 if (!dsi->enabled)
  return;

 if (dsi->panel) {
  if (drm_panel_disable(dsi->panel)) {
   DRM_ERROR("failed to disable the panel\n");
   return;
  }
 }

 mtk_dsi_poweroff(dsi);

 dsi->enabled = 0;
}
