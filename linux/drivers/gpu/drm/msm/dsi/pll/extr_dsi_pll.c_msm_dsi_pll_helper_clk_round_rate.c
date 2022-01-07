
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_pll {unsigned long min_rate; unsigned long max_rate; } ;
struct clk_hw {int dummy; } ;


 struct msm_dsi_pll* hw_clk_to_pll (struct clk_hw*) ;

long msm_dsi_pll_helper_clk_round_rate(struct clk_hw *hw,
  unsigned long rate, unsigned long *parent_rate)
{
 struct msm_dsi_pll *pll = hw_clk_to_pll(hw);

 if (rate < pll->min_rate)
  return pll->min_rate;
 else if (rate > pll->max_rate)
  return pll->max_rate;
 else
  return rate;
}
