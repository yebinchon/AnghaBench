
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dsiclk_sel; int vco_measure_time; int kvco_measure_time; int bandgap_timer; int pll_wakeup_timer; int plllock_cnt; int ssc_en; int ssc_spread; int ssc_freq; int ssc_adj_period; int pll_ie_trim; int pll_ip_trim; int pll_cpcset_cur; int pll_cpmset_cur; int pll_icpmset; int pll_icpcset; int pll_lpf_res1; int pll_lpf_cap1; int pll_lpf_cap2; int pll_iptat_trim; int pll_c3ctrl; int pll_r3ctrl; scalar_t__ pll_icpcset_m; scalar_t__ pll_icpcset_p; scalar_t__ pll_icpmset_m; scalar_t__ pll_icpmset_p; scalar_t__ ssc_center; scalar_t__ plllock_rng; scalar_t__ refclk_dbler_en; scalar_t__ ldo_en; scalar_t__ fdata; int fref; } ;
struct dsi_pll_14nm {TYPE_1__ in; int vco_ref_clk_rate; } ;



__attribute__((used)) static void dsi_pll_14nm_input_init(struct dsi_pll_14nm *pll)
{
 pll->in.fref = pll->vco_ref_clk_rate;
 pll->in.fdata = 0;
 pll->in.dsiclk_sel = 1;
 pll->in.ldo_en = 0;


 pll->in.refclk_dbler_en = 0;
 pll->in.vco_measure_time = 5;
 pll->in.kvco_measure_time = 5;
 pll->in.bandgap_timer = 4;
 pll->in.pll_wakeup_timer = 5;
 pll->in.plllock_cnt = 1;
 pll->in.plllock_rng = 0;





 pll->in.ssc_en = 1;
 pll->in.ssc_center = 0;
 pll->in.ssc_spread = 5;
 pll->in.ssc_freq = 31500;
 pll->in.ssc_adj_period = 37;

 pll->in.pll_ie_trim = 4;
 pll->in.pll_ip_trim = 4;
 pll->in.pll_cpcset_cur = 1;
 pll->in.pll_cpmset_cur = 1;
 pll->in.pll_icpmset = 4;
 pll->in.pll_icpcset = 4;
 pll->in.pll_icpmset_p = 0;
 pll->in.pll_icpmset_m = 0;
 pll->in.pll_icpcset_p = 0;
 pll->in.pll_icpcset_m = 0;
 pll->in.pll_lpf_res1 = 3;
 pll->in.pll_lpf_cap1 = 11;
 pll->in.pll_lpf_cap2 = 1;
 pll->in.pll_iptat_trim = 7;
 pll->in.pll_c3ctrl = 2;
 pll->in.pll_r3ctrl = 1;
}
