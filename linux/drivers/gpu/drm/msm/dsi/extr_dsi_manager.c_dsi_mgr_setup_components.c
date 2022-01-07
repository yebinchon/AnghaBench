
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_pll {int dummy; } ;
struct msm_dsi {int host; int phy; } ;


 int DSI_CLOCK_MASTER ;
 int DSI_CLOCK_SLAVE ;
 int IS_DUAL_DSI () ;
 scalar_t__ IS_ERR (struct msm_dsi_pll*) ;
 scalar_t__ IS_MASTER_DSI_LINK (int) ;
 int MSM_DSI_PHY_MASTER ;
 int MSM_DSI_PHY_SLAVE ;
 int MSM_DSI_PHY_STANDALONE ;
 int PTR_ERR (struct msm_dsi_pll*) ;
 struct msm_dsi* dsi_mgr_get_dsi (int) ;
 struct msm_dsi* dsi_mgr_get_other_dsi (int) ;
 int msm_dsi_host_register (int ,int) ;
 int msm_dsi_host_set_src_pll (int ,struct msm_dsi_pll*) ;
 struct msm_dsi_pll* msm_dsi_phy_get_pll (int ) ;
 int msm_dsi_phy_set_usecase (int ,int ) ;

__attribute__((used)) static int dsi_mgr_setup_components(int id)
{
 struct msm_dsi *msm_dsi = dsi_mgr_get_dsi(id);
 struct msm_dsi *other_dsi = dsi_mgr_get_other_dsi(id);
 struct msm_dsi *clk_master_dsi = dsi_mgr_get_dsi(DSI_CLOCK_MASTER);
 struct msm_dsi *clk_slave_dsi = dsi_mgr_get_dsi(DSI_CLOCK_SLAVE);
 struct msm_dsi_pll *src_pll;
 int ret;

 if (!IS_DUAL_DSI()) {
  ret = msm_dsi_host_register(msm_dsi->host, 1);
  if (ret)
   return ret;

  msm_dsi_phy_set_usecase(msm_dsi->phy, MSM_DSI_PHY_STANDALONE);
  src_pll = msm_dsi_phy_get_pll(msm_dsi->phy);
  if (IS_ERR(src_pll))
   return PTR_ERR(src_pll);
  ret = msm_dsi_host_set_src_pll(msm_dsi->host, src_pll);
 } else if (!other_dsi) {
  ret = 0;
 } else {
  struct msm_dsi *master_link_dsi = IS_MASTER_DSI_LINK(id) ?
       msm_dsi : other_dsi;
  struct msm_dsi *slave_link_dsi = IS_MASTER_DSI_LINK(id) ?
       other_dsi : msm_dsi;







  ret = msm_dsi_host_register(slave_link_dsi->host, 0);
  if (ret)
   return ret;
  ret = msm_dsi_host_register(master_link_dsi->host, 1);
  if (ret)
   return ret;


  msm_dsi_phy_set_usecase(clk_master_dsi->phy,
     MSM_DSI_PHY_MASTER);
  msm_dsi_phy_set_usecase(clk_slave_dsi->phy,
     MSM_DSI_PHY_SLAVE);
  src_pll = msm_dsi_phy_get_pll(clk_master_dsi->phy);
  if (IS_ERR(src_pll))
   return PTR_ERR(src_pll);
  ret = msm_dsi_host_set_src_pll(msm_dsi->host, src_pll);
  if (ret)
   return ret;
  ret = msm_dsi_host_set_src_pll(other_dsi->host, src_pll);
 }

 return ret;
}
