
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct dcn_dccg {int dummy; } ;
struct dccg {int dummy; } ;


 int ASSERT_CRITICAL (int) ;
 int REFCLK_CLOCK_EN ;
 int REFCLK_CNTL ;
 int REFCLK_SRC_SEL ;
 int REG_GET_2 (int ,int ,scalar_t__*,int ,scalar_t__*) ;
 struct dcn_dccg* TO_DCN_DCCG (struct dccg*) ;

void dccg2_get_dccg_ref_freq(struct dccg *dccg,
  unsigned int xtalin_freq_inKhz,
  unsigned int *dccg_ref_freq_inKhz)
{
 struct dcn_dccg *dccg_dcn = TO_DCN_DCCG(dccg);
 uint32_t clk_en = 0;
 uint32_t clk_sel = 0;

 REG_GET_2(REFCLK_CNTL, REFCLK_CLOCK_EN, &clk_en, REFCLK_SRC_SEL, &clk_sel);

 if (clk_en != 0) {



  ASSERT_CRITICAL(0);
 }

 *dccg_ref_freq_inKhz = xtalin_freq_inKhz;

 return;
}
