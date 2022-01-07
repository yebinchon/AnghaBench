
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ max_input_pxl_clk_pll_frequency; scalar_t__ min_input_pxl_clk_pll_frequency; int max_output_pxl_clk_pll_frequency; int min_output_pxl_clk_pll_frequency; int crystal_frequency; } ;
struct dc_firmware_info {TYPE_2__ pll_info; } ;
struct calc_pll_clock_source_init_data {scalar_t__ max_override_input_pxl_clk_pll_freq_khz; scalar_t__ min_override_input_pxl_clk_pll_freq_khz; scalar_t__ num_fract_fb_divider_decimal_point; scalar_t__ num_fract_fb_divider_decimal_point_precision; int max_pll_ref_divider; int min_pll_ref_divider; int max_pix_clk_pll_post_divider; int min_pix_clk_pll_post_divider; int ctx; TYPE_1__* bp; } ;
struct calc_pll_clock_source {scalar_t__ max_pll_input_freq_khz; scalar_t__ min_pll_input_freq_khz; scalar_t__ fract_fb_divider_decimal_points_num; scalar_t__ fract_fb_divider_precision; int fract_fb_divider_factor; int fract_fb_divider_precision_factor; int max_pll_ref_divider; int min_pll_ref_divider; int max_pix_clock_pll_post_divider; int min_pix_clock_pll_post_divider; int max_vco_khz; int min_vco_khz; int ref_freq_khz; int ctx; } ;
struct TYPE_3__ {struct dc_firmware_info fw_info; int fw_info_valid; } ;


 int DC_LOG_ERROR (char*) ;

__attribute__((used)) static bool calc_pll_max_vco_construct(
   struct calc_pll_clock_source *calc_pll_cs,
   struct calc_pll_clock_source_init_data *init_data)
{
 uint32_t i;
 struct dc_firmware_info *fw_info;
 if (calc_pll_cs == ((void*)0) ||
   init_data == ((void*)0) ||
   init_data->bp == ((void*)0))
  return 0;

 if (!init_data->bp->fw_info_valid)
  return 0;

 fw_info = &init_data->bp->fw_info;
 calc_pll_cs->ctx = init_data->ctx;
 calc_pll_cs->ref_freq_khz = fw_info->pll_info.crystal_frequency;
 calc_pll_cs->min_vco_khz =
   fw_info->pll_info.min_output_pxl_clk_pll_frequency;
 calc_pll_cs->max_vco_khz =
   fw_info->pll_info.max_output_pxl_clk_pll_frequency;

 if (init_data->max_override_input_pxl_clk_pll_freq_khz != 0)
  calc_pll_cs->max_pll_input_freq_khz =
   init_data->max_override_input_pxl_clk_pll_freq_khz;
 else
  calc_pll_cs->max_pll_input_freq_khz =
   fw_info->pll_info.max_input_pxl_clk_pll_frequency;

 if (init_data->min_override_input_pxl_clk_pll_freq_khz != 0)
  calc_pll_cs->min_pll_input_freq_khz =
   init_data->min_override_input_pxl_clk_pll_freq_khz;
 else
  calc_pll_cs->min_pll_input_freq_khz =
   fw_info->pll_info.min_input_pxl_clk_pll_frequency;

 calc_pll_cs->min_pix_clock_pll_post_divider =
   init_data->min_pix_clk_pll_post_divider;
 calc_pll_cs->max_pix_clock_pll_post_divider =
   init_data->max_pix_clk_pll_post_divider;
 calc_pll_cs->min_pll_ref_divider =
   init_data->min_pll_ref_divider;
 calc_pll_cs->max_pll_ref_divider =
   init_data->max_pll_ref_divider;

 if (init_data->num_fract_fb_divider_decimal_point == 0 ||
  init_data->num_fract_fb_divider_decimal_point_precision >
    init_data->num_fract_fb_divider_decimal_point) {
  DC_LOG_ERROR(
   "The dec point num or precision is incorrect!");
  return 0;
 }
 if (init_data->num_fract_fb_divider_decimal_point_precision == 0) {
  DC_LOG_ERROR(
   "Incorrect fract feedback divider precision num!");
  return 0;
 }

 calc_pll_cs->fract_fb_divider_decimal_points_num =
    init_data->num_fract_fb_divider_decimal_point;
 calc_pll_cs->fract_fb_divider_precision =
   init_data->num_fract_fb_divider_decimal_point_precision;
 calc_pll_cs->fract_fb_divider_factor = 1;
 for (i = 0; i < calc_pll_cs->fract_fb_divider_decimal_points_num; ++i)
  calc_pll_cs->fract_fb_divider_factor *= 10;

 calc_pll_cs->fract_fb_divider_precision_factor = 1;
 for (
  i = 0;
  i < (calc_pll_cs->fract_fb_divider_decimal_points_num -
    calc_pll_cs->fract_fb_divider_precision);
  ++i)
  calc_pll_cs->fract_fb_divider_precision_factor *= 10;

 return 1;
}
