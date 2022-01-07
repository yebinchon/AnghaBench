
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct pll_settings {int actual_pix_clk_100hz; int adjusted_pix_clk_100hz; int pix_clk_post_divider; int reference_divider; } ;
struct TYPE_4__ {int ENABLE_SS; } ;
struct pixel_clk_params {int signal_type; int requested_pix_clk_100hz; int requested_sym_clk; TYPE_1__ flags; int encoder_object_id; int color_depth; int pixel_encoding; } ;
struct dce110_clk_src {TYPE_3__* bios; } ;
struct bp_adjust_pixel_clock_parameters {int pixel_clock; int signal_type; int adjusted_pixel_clock; int pixel_clock_post_divider; int reference_divider; int ss_enable; int encoder_object_id; int member_0; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_6__ {TYPE_2__* funcs; } ;
struct TYPE_5__ {int (* adjust_pixel_clock ) (TYPE_3__*,struct bp_adjust_pixel_clock_parameters*) ;} ;


 int BP_RESULT_OK ;



 int PIXEL_ENCODING_YCBCR422 ;




 int stub1 (TYPE_3__*,struct bp_adjust_pixel_clock_parameters*) ;

__attribute__((used)) static bool pll_adjust_pix_clk(
  struct dce110_clk_src *clk_src,
  struct pixel_clk_params *pix_clk_params,
  struct pll_settings *pll_settings)
{
 uint32_t actual_pix_clk_100hz = 0;
 uint32_t requested_clk_100hz = 0;
 struct bp_adjust_pixel_clock_parameters bp_adjust_pixel_clock_params = {
       0 };
 enum bp_result bp_result;
 switch (pix_clk_params->signal_type) {
 case 128: {
  requested_clk_100hz = pix_clk_params->requested_pix_clk_100hz;
  if (pix_clk_params->pixel_encoding != PIXEL_ENCODING_YCBCR422) {
   switch (pix_clk_params->color_depth) {
   case 134:
    requested_clk_100hz = (requested_clk_100hz * 5) >> 2;
    break;
   case 133:
    requested_clk_100hz = (requested_clk_100hz * 6) >> 2;
    break;
   case 132:
    requested_clk_100hz = requested_clk_100hz * 2;
    break;
   default:
    break;
   }
  }
  actual_pix_clk_100hz = requested_clk_100hz;
 }
  break;

 case 131:
 case 130:
 case 129:
  requested_clk_100hz = pix_clk_params->requested_sym_clk * 10;
  actual_pix_clk_100hz = pix_clk_params->requested_pix_clk_100hz;
  break;

 default:
  requested_clk_100hz = pix_clk_params->requested_pix_clk_100hz;
  actual_pix_clk_100hz = pix_clk_params->requested_pix_clk_100hz;
  break;
 }

 bp_adjust_pixel_clock_params.pixel_clock = requested_clk_100hz / 10;
 bp_adjust_pixel_clock_params.
  encoder_object_id = pix_clk_params->encoder_object_id;
 bp_adjust_pixel_clock_params.signal_type = pix_clk_params->signal_type;
 bp_adjust_pixel_clock_params.
  ss_enable = pix_clk_params->flags.ENABLE_SS;
 bp_result = clk_src->bios->funcs->adjust_pixel_clock(
   clk_src->bios, &bp_adjust_pixel_clock_params);
 if (bp_result == BP_RESULT_OK) {
  pll_settings->actual_pix_clk_100hz = actual_pix_clk_100hz;
  pll_settings->adjusted_pix_clk_100hz =
   bp_adjust_pixel_clock_params.adjusted_pixel_clock * 10;
  pll_settings->reference_divider =
   bp_adjust_pixel_clock_params.reference_divider;
  pll_settings->pix_clk_post_divider =
   bp_adjust_pixel_clock_params.pixel_clock_post_divider;

  return 1;
 }

 return 0;
}
