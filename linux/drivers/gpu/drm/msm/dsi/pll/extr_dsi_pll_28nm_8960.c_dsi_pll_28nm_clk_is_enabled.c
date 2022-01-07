
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_pll {int dummy; } ;
struct dsi_pll_28nm {int dummy; } ;
struct clk_hw {int dummy; } ;


 int POLL_MAX_READS ;
 int POLL_TIMEOUT_US ;
 struct msm_dsi_pll* hw_clk_to_pll (struct clk_hw*) ;
 int pll_28nm_poll_for_ready (struct dsi_pll_28nm*,int ,int ) ;
 struct dsi_pll_28nm* to_pll_28nm (struct msm_dsi_pll*) ;

__attribute__((used)) static int dsi_pll_28nm_clk_is_enabled(struct clk_hw *hw)
{
 struct msm_dsi_pll *pll = hw_clk_to_pll(hw);
 struct dsi_pll_28nm *pll_28nm = to_pll_28nm(pll);

 return pll_28nm_poll_for_ready(pll_28nm, POLL_MAX_READS,
     POLL_TIMEOUT_US);
}
