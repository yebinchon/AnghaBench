
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_pll {int pll_on; } ;
struct dsi_pll_10nm {scalar_t__ phy_cmn_mmio; struct dsi_pll_10nm* slave; int id; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ REG_DSI_10nm_PHY_CMN_PLL_CNTRL ;
 scalar_t__ REG_DSI_10nm_PHY_CMN_RBUF_CTRL ;
 int dsi_pll_10nm_lock_status (struct dsi_pll_10nm*) ;
 int dsi_pll_enable_global_clk (struct dsi_pll_10nm*) ;
 int dsi_pll_enable_pll_bias (struct dsi_pll_10nm*) ;
 struct msm_dsi_pll* hw_clk_to_pll (struct clk_hw*) ;
 int pll_write (scalar_t__,int) ;
 int pr_err (char*,int ) ;
 struct dsi_pll_10nm* to_pll_10nm (struct msm_dsi_pll*) ;
 int wmb () ;

__attribute__((used)) static int dsi_pll_10nm_vco_prepare(struct clk_hw *hw)
{
 struct msm_dsi_pll *pll = hw_clk_to_pll(hw);
 struct dsi_pll_10nm *pll_10nm = to_pll_10nm(pll);
 int rc;

 dsi_pll_enable_pll_bias(pll_10nm);
 if (pll_10nm->slave)
  dsi_pll_enable_pll_bias(pll_10nm->slave);


 pll_write(pll_10nm->phy_cmn_mmio + REG_DSI_10nm_PHY_CMN_PLL_CNTRL,
    0x01);





 wmb();


 rc = dsi_pll_10nm_lock_status(pll_10nm);
 if (rc) {
  pr_err("PLL(%d) lock failed\n", pll_10nm->id);
  goto error;
 }

 pll->pll_on = 1;

 dsi_pll_enable_global_clk(pll_10nm);
 if (pll_10nm->slave)
  dsi_pll_enable_global_clk(pll_10nm->slave);

 pll_write(pll_10nm->phy_cmn_mmio + REG_DSI_10nm_PHY_CMN_RBUF_CTRL,
    0x01);
 if (pll_10nm->slave)
  pll_write(pll_10nm->slave->phy_cmn_mmio +
     REG_DSI_10nm_PHY_CMN_RBUF_CTRL, 0x01);

error:
 return rc;
}
