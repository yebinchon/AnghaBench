
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce_clk_mgr {int dprefclk_khz; } ;
struct clk_mgr {int dummy; } ;


 struct dce_clk_mgr* TO_DCE_CLK_MGR (struct clk_mgr*) ;
 int clk_mgr_adjust_dp_ref_freq_for_ss (struct dce_clk_mgr*,int ) ;

int dce12_get_dp_ref_freq_khz(struct clk_mgr *clk_mgr)
{
 struct dce_clk_mgr *clk_mgr_dce = TO_DCE_CLK_MGR(clk_mgr);

 return clk_mgr_adjust_dp_ref_freq_for_ss(clk_mgr_dce, clk_mgr_dce->dprefclk_khz);
}
