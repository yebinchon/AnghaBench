
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_pll_10nm {scalar_t__ phy_cmn_mmio; } ;


 scalar_t__ REG_DSI_10nm_PHY_CMN_RBUF_CTRL ;
 int dsi_pll_disable_pll_bias (struct dsi_pll_10nm*) ;
 int pll_write (scalar_t__,int ) ;

__attribute__((used)) static void dsi_pll_disable_sub(struct dsi_pll_10nm *pll)
{
 pll_write(pll->phy_cmn_mmio + REG_DSI_10nm_PHY_CMN_RBUF_CTRL, 0);
 dsi_pll_disable_pll_bias(pll);
}
