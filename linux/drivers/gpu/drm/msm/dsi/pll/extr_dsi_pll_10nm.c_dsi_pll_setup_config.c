
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsi_pll_config {int output_div; int dec_bits; int frac_bits; int lock_timer; int ssc_freq; int ssc_offset; int ssc_adj_per; int thresh_cycles; int refclk_cycles; int div_override; int ignore_frac; int disable_prescaler; int enable_ssc; scalar_t__ ssc_center; int ref_freq; } ;
struct dsi_pll_10nm {int vco_ref_clk_rate; struct dsi_pll_config pll_configuration; } ;



__attribute__((used)) static void dsi_pll_setup_config(struct dsi_pll_10nm *pll)
{
 struct dsi_pll_config *config = &pll->pll_configuration;

 config->ref_freq = pll->vco_ref_clk_rate;
 config->output_div = 1;
 config->dec_bits = 8;
 config->frac_bits = 18;
 config->lock_timer = 64;
 config->ssc_freq = 31500;
 config->ssc_offset = 5000;
 config->ssc_adj_per = 2;
 config->thresh_cycles = 32;
 config->refclk_cycles = 256;

 config->div_override = 0;
 config->ignore_frac = 0;
 config->disable_prescaler = 0;

 config->enable_ssc = 0;
 config->ssc_center = 0;
}
