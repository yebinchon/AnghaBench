
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_pll {int dummy; } ;
struct clk_hw {int dummy; } ;


 int dsi_pll_enable (struct msm_dsi_pll*) ;
 struct msm_dsi_pll* hw_clk_to_pll (struct clk_hw*) ;

int msm_dsi_pll_helper_clk_prepare(struct clk_hw *hw)
{
 struct msm_dsi_pll *pll = hw_clk_to_pll(hw);

 return dsi_pll_enable(pll);
}
