
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct clk_mgr_internal {unsigned int dentist_vco_freq_khz; } ;


 int DENTIST_DISPCLK_CNTL ;
 unsigned int DENTIST_DIVIDER_RANGE_SCALE_FACTOR ;
 int DENTIST_DPPCLK_CHG_DONE ;
 int DENTIST_DPPCLK_WDIVIDER ;
 int REG_UPDATE (int ,int ,int ) ;
 int REG_WAIT (int ,int ,int,int,int) ;
 int dentist_get_did_from_divider (int) ;

__attribute__((used)) static void update_global_dpp_clk(struct clk_mgr_internal *clk_mgr, unsigned int khz)
{
 int dpp_divider = DENTIST_DIVIDER_RANGE_SCALE_FACTOR
   * clk_mgr->dentist_vco_freq_khz / khz;

 uint32_t dppclk_wdivider = dentist_get_did_from_divider(dpp_divider);

 REG_UPDATE(DENTIST_DISPCLK_CNTL,
   DENTIST_DPPCLK_WDIVIDER, dppclk_wdivider);
 REG_WAIT(DENTIST_DISPCLK_CNTL, DENTIST_DPPCLK_CHG_DONE, 1, 5, 100);
}
