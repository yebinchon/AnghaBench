
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dc_crtc_timing {int pix_clk_100hz; scalar_t__ pixel_encoding; int display_color_depth; } ;


 int ASSERT (int ) ;





 scalar_t__ PIXEL_ENCODING_YCBCR420 ;
 scalar_t__ PIXEL_ENCODING_YCBCR422 ;

__attribute__((used)) static int get_norm_pix_clk(const struct dc_crtc_timing *timing)
{
 uint32_t pix_clk = timing->pix_clk_100hz;
 uint32_t normalized_pix_clk = pix_clk;

 if (timing->pixel_encoding == PIXEL_ENCODING_YCBCR420)
  pix_clk /= 2;
 if (timing->pixel_encoding != PIXEL_ENCODING_YCBCR422) {
  switch (timing->display_color_depth) {
  case 129:
  case 128:
   normalized_pix_clk = pix_clk;
   break;
  case 132:
   normalized_pix_clk = (pix_clk * 30) / 24;
   break;
  case 131:
   normalized_pix_clk = (pix_clk * 36) / 24;
  break;
  case 130:
   normalized_pix_clk = (pix_clk * 48) / 24;
  break;
  default:
   ASSERT(0);
  break;
  }
 }
 return normalized_pix_clk;
}
