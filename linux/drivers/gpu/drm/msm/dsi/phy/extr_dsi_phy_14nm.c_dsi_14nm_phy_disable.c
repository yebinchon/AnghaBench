
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_phy {scalar_t__ base; } ;


 scalar_t__ REG_DSI_14nm_PHY_CMN_CTRL_0 ;
 scalar_t__ REG_DSI_14nm_PHY_CMN_GLBL_TEST_CTRL ;
 int dsi_phy_write (scalar_t__,int ) ;
 int wmb () ;

__attribute__((used)) static void dsi_14nm_phy_disable(struct msm_dsi_phy *phy)
{
 dsi_phy_write(phy->base + REG_DSI_14nm_PHY_CMN_GLBL_TEST_CTRL, 0);
 dsi_phy_write(phy->base + REG_DSI_14nm_PHY_CMN_CTRL_0, 0);


 wmb();
}
