
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsi_pll_10nm {scalar_t__ phy_cmn_mmio; } ;


 int BIT (int) ;
 scalar_t__ REG_DSI_10nm_PHY_CMN_CLK_CFG1 ;
 int pll_read (scalar_t__) ;
 int pll_write (scalar_t__,int) ;

__attribute__((used)) static void dsi_pll_enable_global_clk(struct dsi_pll_10nm *pll)
{
 u32 data;

 data = pll_read(pll->phy_cmn_mmio + REG_DSI_10nm_PHY_CMN_CLK_CFG1);
 pll_write(pll->phy_cmn_mmio + REG_DSI_10nm_PHY_CMN_CLK_CFG1,
    data | BIT(5));
}
