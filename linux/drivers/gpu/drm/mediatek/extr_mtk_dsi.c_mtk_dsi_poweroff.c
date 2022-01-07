
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dsi {scalar_t__ refcount; int phy; int digital_clk; int engine_clk; scalar_t__ panel; } ;


 int DRM_ERROR (char*) ;
 int VM_DONE_INT_FLAG ;
 scalar_t__ WARN_ON (int) ;
 int clk_disable_unprepare (int ) ;
 scalar_t__ drm_panel_unprepare (scalar_t__) ;
 int mtk_dsi_clk_ulp_mode_enter (struct mtk_dsi*) ;
 int mtk_dsi_disable (struct mtk_dsi*) ;
 int mtk_dsi_lane0_ulp_mode_enter (struct mtk_dsi*) ;
 int mtk_dsi_reset_engine (struct mtk_dsi*) ;
 int mtk_dsi_stop (struct mtk_dsi*) ;
 int mtk_dsi_switch_to_cmd_mode (struct mtk_dsi*,int ,int) ;
 int phy_power_off (int ) ;

__attribute__((used)) static void mtk_dsi_poweroff(struct mtk_dsi *dsi)
{
 if (WARN_ON(dsi->refcount == 0))
  return;

 if (--dsi->refcount != 0)
  return;
 mtk_dsi_stop(dsi);

 if (!mtk_dsi_switch_to_cmd_mode(dsi, VM_DONE_INT_FLAG, 500)) {
  if (dsi->panel) {
   if (drm_panel_unprepare(dsi->panel)) {
    DRM_ERROR("failed to unprepare the panel\n");
    return;
   }
  }
 }

 mtk_dsi_reset_engine(dsi);
 mtk_dsi_lane0_ulp_mode_enter(dsi);
 mtk_dsi_clk_ulp_mode_enter(dsi);

 mtk_dsi_disable(dsi);

 clk_disable_unprepare(dsi->engine_clk);
 clk_disable_unprepare(dsi->digital_clk);

 phy_power_off(dsi->phy);
}
