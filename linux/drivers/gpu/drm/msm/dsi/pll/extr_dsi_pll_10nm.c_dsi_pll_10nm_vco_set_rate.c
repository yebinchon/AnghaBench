
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi_pll {int dummy; } ;
struct dsi_pll_10nm {unsigned long vco_current_rate; int vco_ref_clk_rate; int id; } ;
struct clk_hw {int dummy; } ;


 int DBG (char*,int ,unsigned long,unsigned long) ;
 int VCO_REF_CLK_RATE ;
 int dsi_pll_calc_dec_frac (struct dsi_pll_10nm*) ;
 int dsi_pll_calc_ssc (struct dsi_pll_10nm*) ;
 int dsi_pll_commit (struct dsi_pll_10nm*) ;
 int dsi_pll_config_hzindep_reg (struct dsi_pll_10nm*) ;
 int dsi_pll_setup_config (struct dsi_pll_10nm*) ;
 int dsi_pll_ssc_commit (struct dsi_pll_10nm*) ;
 struct msm_dsi_pll* hw_clk_to_pll (struct clk_hw*) ;
 struct dsi_pll_10nm* to_pll_10nm (struct msm_dsi_pll*) ;
 int wmb () ;

__attribute__((used)) static int dsi_pll_10nm_vco_set_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long parent_rate)
{
 struct msm_dsi_pll *pll = hw_clk_to_pll(hw);
 struct dsi_pll_10nm *pll_10nm = to_pll_10nm(pll);

 DBG("DSI PLL%d rate=%lu, parent's=%lu", pll_10nm->id, rate,
     parent_rate);

 pll_10nm->vco_current_rate = rate;
 pll_10nm->vco_ref_clk_rate = VCO_REF_CLK_RATE;

 dsi_pll_setup_config(pll_10nm);

 dsi_pll_calc_dec_frac(pll_10nm);

 dsi_pll_calc_ssc(pll_10nm);

 dsi_pll_commit(pll_10nm);

 dsi_pll_config_hzindep_reg(pll_10nm);

 dsi_pll_ssc_commit(pll_10nm);


 wmb();

 return 0;
}
