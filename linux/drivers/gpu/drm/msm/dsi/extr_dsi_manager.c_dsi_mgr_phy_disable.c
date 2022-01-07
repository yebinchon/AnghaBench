
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi {int phy_enabled; int phy; } ;


 int DSI_CLOCK_MASTER ;
 int DSI_CLOCK_SLAVE ;
 scalar_t__ IS_DUAL_DSI () ;
 struct msm_dsi* dsi_mgr_get_dsi (int) ;
 int msm_dsi_phy_disable (int ) ;

__attribute__((used)) static void dsi_mgr_phy_disable(int id)
{
 struct msm_dsi *msm_dsi = dsi_mgr_get_dsi(id);
 struct msm_dsi *mdsi = dsi_mgr_get_dsi(DSI_CLOCK_MASTER);
 struct msm_dsi *sdsi = dsi_mgr_get_dsi(DSI_CLOCK_SLAVE);





 msm_dsi->phy_enabled = 0;
 if (IS_DUAL_DSI() && mdsi && sdsi) {
  if (!mdsi->phy_enabled && !sdsi->phy_enabled) {
   msm_dsi_phy_disable(sdsi->phy);
   msm_dsi_phy_disable(mdsi->phy);
  }
 } else {
  msm_dsi_phy_disable(msm_dsi->phy);
 }
}
