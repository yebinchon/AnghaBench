
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_pll {int pll_on; } ;
struct dsi_pll_10nm {struct dsi_pll_10nm* slave; scalar_t__ phy_cmn_mmio; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ REG_DSI_10nm_PHY_CMN_PLL_CNTRL ;
 int dsi_pll_disable_global_clk (struct dsi_pll_10nm*) ;
 int dsi_pll_disable_sub (struct dsi_pll_10nm*) ;
 struct msm_dsi_pll* hw_clk_to_pll (struct clk_hw*) ;
 int pll_write (scalar_t__,int ) ;
 struct dsi_pll_10nm* to_pll_10nm (struct msm_dsi_pll*) ;
 int wmb () ;

__attribute__((used)) static void dsi_pll_10nm_vco_unprepare(struct clk_hw *hw)
{
 struct msm_dsi_pll *pll = hw_clk_to_pll(hw);
 struct dsi_pll_10nm *pll_10nm = to_pll_10nm(pll);






 dsi_pll_disable_global_clk(pll_10nm);
 pll_write(pll_10nm->phy_cmn_mmio + REG_DSI_10nm_PHY_CMN_PLL_CNTRL, 0);
 dsi_pll_disable_sub(pll_10nm);
 if (pll_10nm->slave) {
  dsi_pll_disable_global_clk(pll_10nm->slave);
  dsi_pll_disable_sub(pll_10nm->slave);
 }

 wmb();
 pll->pll_on = 0;
}
