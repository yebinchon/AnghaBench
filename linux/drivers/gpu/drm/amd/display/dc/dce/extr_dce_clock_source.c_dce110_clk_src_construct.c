
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dce110_clk_src_shift {int dummy; } ;
struct dce110_clk_src_regs {int dummy; } ;
struct dce110_clk_src_mask {int PLL_REF_DIV; int PLL_POST_DIV_PIXCLK; } ;
struct TYPE_6__ {int id; int * funcs; struct dc_context* ctx; } ;
struct dce110_clk_src {int ref_freq_khz; int calc_pll_hdmi; int calc_pll; TYPE_3__ base; struct dc_bios* bios; struct dce110_clk_src_mask const* cs_mask; int ext_clk_khz; struct dce110_clk_src_shift const* cs_shift; struct dce110_clk_src_regs const* regs; } ;
struct dc_context {int dummy; } ;
struct TYPE_4__ {int crystal_frequency; } ;
struct TYPE_5__ {TYPE_1__ pll_info; int external_clock_source_frequency_for_dp; } ;
struct dc_bios {TYPE_2__ fw_info; int fw_info_valid; } ;
struct calc_pll_clock_source_init_data {int min_pix_clk_pll_post_divider; int min_pll_ref_divider; int min_override_input_pxl_clk_pll_freq_khz; int max_override_input_pxl_clk_pll_freq_khz; struct dc_context* ctx; void* num_fract_fb_divider_decimal_point_precision; void* num_fract_fb_divider_decimal_point; int max_pll_ref_divider; int max_pix_clk_pll_post_divider; struct dc_bios* bp; } ;
typedef enum clock_source_id { ____Placeholder_clock_source_id } clock_source_id ;


 int ASSERT_CRITICAL (int) ;
 scalar_t__ CLOCK_SOURCE_ID_EXTERNAL ;
 void* FRACT_FB_DIVIDER_DEC_POINTS_MAX_NUM ;
 int calc_pll_max_vco_construct (int *,struct calc_pll_clock_source_init_data*) ;
 int dce110_clk_src_funcs ;
 int ss_info_from_atombios_create (struct dce110_clk_src*) ;

bool dce110_clk_src_construct(
 struct dce110_clk_src *clk_src,
 struct dc_context *ctx,
 struct dc_bios *bios,
 enum clock_source_id id,
 const struct dce110_clk_src_regs *regs,
 const struct dce110_clk_src_shift *cs_shift,
 const struct dce110_clk_src_mask *cs_mask)
{
 struct calc_pll_clock_source_init_data calc_pll_cs_init_data_hdmi;
 struct calc_pll_clock_source_init_data calc_pll_cs_init_data;

 clk_src->base.ctx = ctx;
 clk_src->bios = bios;
 clk_src->base.id = id;
 clk_src->base.funcs = &dce110_clk_src_funcs;

 clk_src->regs = regs;
 clk_src->cs_shift = cs_shift;
 clk_src->cs_mask = cs_mask;

 if (!clk_src->bios->fw_info_valid) {
  ASSERT_CRITICAL(0);
  goto unexpected_failure;
 }

 clk_src->ext_clk_khz = clk_src->bios->fw_info.external_clock_source_frequency_for_dp;


 calc_pll_cs_init_data.bp = bios;
 calc_pll_cs_init_data.min_pix_clk_pll_post_divider = 1;
 calc_pll_cs_init_data.max_pix_clk_pll_post_divider =
   clk_src->cs_mask->PLL_POST_DIV_PIXCLK;
 calc_pll_cs_init_data.min_pll_ref_divider = 1;
 calc_pll_cs_init_data.max_pll_ref_divider = clk_src->cs_mask->PLL_REF_DIV;

 calc_pll_cs_init_data.min_override_input_pxl_clk_pll_freq_khz = 0;

 calc_pll_cs_init_data.max_override_input_pxl_clk_pll_freq_khz = 0;

 calc_pll_cs_init_data.num_fract_fb_divider_decimal_point =
   FRACT_FB_DIVIDER_DEC_POINTS_MAX_NUM;

 calc_pll_cs_init_data.num_fract_fb_divider_decimal_point_precision =
   FRACT_FB_DIVIDER_DEC_POINTS_MAX_NUM;
 calc_pll_cs_init_data.ctx = ctx;


 calc_pll_cs_init_data_hdmi.bp = bios;
 calc_pll_cs_init_data_hdmi.min_pix_clk_pll_post_divider = 1;
 calc_pll_cs_init_data_hdmi.max_pix_clk_pll_post_divider =
   clk_src->cs_mask->PLL_POST_DIV_PIXCLK;
 calc_pll_cs_init_data_hdmi.min_pll_ref_divider = 1;
 calc_pll_cs_init_data_hdmi.max_pll_ref_divider = clk_src->cs_mask->PLL_REF_DIV;

 calc_pll_cs_init_data_hdmi.min_override_input_pxl_clk_pll_freq_khz = 13500;

 calc_pll_cs_init_data_hdmi.max_override_input_pxl_clk_pll_freq_khz = 27000;

 calc_pll_cs_init_data_hdmi.num_fract_fb_divider_decimal_point =
   FRACT_FB_DIVIDER_DEC_POINTS_MAX_NUM;

 calc_pll_cs_init_data_hdmi.num_fract_fb_divider_decimal_point_precision =
   FRACT_FB_DIVIDER_DEC_POINTS_MAX_NUM;
 calc_pll_cs_init_data_hdmi.ctx = ctx;

 clk_src->ref_freq_khz = clk_src->bios->fw_info.pll_info.crystal_frequency;

 if (clk_src->base.id == CLOCK_SOURCE_ID_EXTERNAL)
  return 1;


 ss_info_from_atombios_create(clk_src);

 if (!calc_pll_max_vco_construct(
   &clk_src->calc_pll,
   &calc_pll_cs_init_data)) {
  ASSERT_CRITICAL(0);
  goto unexpected_failure;
 }


 calc_pll_cs_init_data_hdmi.
   min_override_input_pxl_clk_pll_freq_khz = clk_src->ref_freq_khz/2;
 calc_pll_cs_init_data_hdmi.
   max_override_input_pxl_clk_pll_freq_khz = clk_src->ref_freq_khz;


 if (!calc_pll_max_vco_construct(
   &clk_src->calc_pll_hdmi, &calc_pll_cs_init_data_hdmi)) {
  ASSERT_CRITICAL(0);
  goto unexpected_failure;
 }

 return 1;

unexpected_failure:
 return 0;
}
