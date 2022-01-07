
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pll_settings {int actual_pix_clk_100hz; int adjusted_pix_clk_100hz; int calculated_pix_clk_100hz; } ;
struct pixel_clk_params {int requested_pix_clk_100hz; scalar_t__ signal_type; int color_depth; } ;
struct dce110_clk_src {int dummy; } ;





 scalar_t__ SIGNAL_TYPE_HDMI_TYPE_A ;

__attribute__((used)) static void dce112_get_pix_clk_dividers_helper (
  struct dce110_clk_src *clk_src,
  struct pll_settings *pll_settings,
  struct pixel_clk_params *pix_clk_params)
{
 uint32_t actual_pixel_clock_100hz;

 actual_pixel_clock_100hz = pix_clk_params->requested_pix_clk_100hz;

 if (pix_clk_params->signal_type == SIGNAL_TYPE_HDMI_TYPE_A) {
  switch (pix_clk_params->color_depth) {
  case 130:
   actual_pixel_clock_100hz = (actual_pixel_clock_100hz * 5) >> 2;
   break;
  case 129:
   actual_pixel_clock_100hz = (actual_pixel_clock_100hz * 6) >> 2;
   break;
  case 128:
   actual_pixel_clock_100hz = actual_pixel_clock_100hz * 2;
   break;
  default:
   break;
  }
 }
 pll_settings->actual_pix_clk_100hz = actual_pixel_clock_100hz;
 pll_settings->adjusted_pix_clk_100hz = actual_pixel_clock_100hz;
 pll_settings->calculated_pix_clk_100hz = pix_clk_params->requested_pix_clk_100hz;
}
