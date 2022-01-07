
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_mgr_internal {int dentist_vco_freq_khz; } ;
struct clk_mgr {int dummy; } ;


 int ASSERT (int) ;
 int DENTIST_DISPCLK_CNTL ;
 int DENTIST_DIVIDER_RANGE_SCALE_FACTOR ;
 int DENTIST_DPREFCLK_WDIVIDER ;
 int DPREFCLK_CNTL ;
 int DPREFCLK_SRC_SEL ;
 int REG_GET (int ,int ,int*) ;
 struct clk_mgr_internal* TO_CLK_MGR_INTERNAL (struct clk_mgr*) ;
 int dce_adjust_dp_ref_freq_for_ss (struct clk_mgr_internal*,int) ;
 int dentist_get_divider_from_did (int) ;

int dce_get_dp_ref_freq_khz(struct clk_mgr *clk_mgr_base)
{
 struct clk_mgr_internal *clk_mgr = TO_CLK_MGR_INTERNAL(clk_mgr_base);
 int dprefclk_wdivider;
 int dprefclk_src_sel;
 int dp_ref_clk_khz = 600000;
 int target_div;


 REG_GET(DPREFCLK_CNTL, DPREFCLK_SRC_SEL, &dprefclk_src_sel);
 ASSERT(dprefclk_src_sel == 0);



 REG_GET(DENTIST_DISPCLK_CNTL, DENTIST_DPREFCLK_WDIVIDER, &dprefclk_wdivider);


 target_div = dentist_get_divider_from_did(dprefclk_wdivider);


 dp_ref_clk_khz = (DENTIST_DIVIDER_RANGE_SCALE_FACTOR
  * clk_mgr->dentist_vco_freq_khz) / target_div;

 return dce_adjust_dp_ref_freq_for_ss(clk_mgr, dp_ref_clk_khz);
}
