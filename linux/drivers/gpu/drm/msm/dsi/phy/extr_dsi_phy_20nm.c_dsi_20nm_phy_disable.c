
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_phy {scalar_t__ base; } ;


 scalar_t__ REG_DSI_20nm_PHY_CTRL_0 ;
 int dsi_20nm_phy_regulator_ctrl (struct msm_dsi_phy*,int) ;
 int dsi_phy_write (scalar_t__,int ) ;

__attribute__((used)) static void dsi_20nm_phy_disable(struct msm_dsi_phy *phy)
{
 dsi_phy_write(phy->base + REG_DSI_20nm_PHY_CTRL_0, 0);
 dsi_20nm_phy_regulator_ctrl(phy, 0);
}
