
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edp_phy {scalar_t__ base; } ;


 int DBG (char*,int) ;
 int EDP_PHY_CTRL_SW_RESET ;
 int EDP_PHY_CTRL_SW_RESET_PLL ;
 scalar_t__ REG_EDP_PHY_CTRL ;
 scalar_t__ REG_EDP_PHY_GLB_CFG ;
 scalar_t__ REG_EDP_PHY_GLB_PD_CTL ;
 int edp_write (scalar_t__,int) ;
 int usleep_range (int,int) ;
 int wmb () ;

void msm_edp_phy_ctrl(struct edp_phy *phy, int enable)
{
 DBG("enable=%d", enable);
 if (enable) {

  edp_write(phy->base + REG_EDP_PHY_CTRL,
   EDP_PHY_CTRL_SW_RESET | EDP_PHY_CTRL_SW_RESET_PLL);

  wmb();
  usleep_range(500, 1000);
  edp_write(phy->base + REG_EDP_PHY_CTRL, 0x000);
  edp_write(phy->base + REG_EDP_PHY_GLB_PD_CTL, 0x3f);
  edp_write(phy->base + REG_EDP_PHY_GLB_CFG, 0x1);
 } else {
  edp_write(phy->base + REG_EDP_PHY_GLB_PD_CTL, 0xc0);
 }
}
