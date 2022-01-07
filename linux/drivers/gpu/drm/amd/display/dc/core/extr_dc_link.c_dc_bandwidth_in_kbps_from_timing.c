
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int Y_ONLY; scalar_t__ DSC; } ;
struct TYPE_3__ {int bits_per_pixel; } ;
struct dc_crtc_timing {int pix_clk_100hz; int display_color_depth; scalar_t__ pixel_encoding; TYPE_2__ flags; TYPE_1__ dsc_cfg; } ;


 int ASSERT (int) ;






 scalar_t__ PIXEL_ENCODING_YCBCR420 ;
 scalar_t__ PIXEL_ENCODING_YCBCR422 ;

uint32_t dc_bandwidth_in_kbps_from_timing(
 const struct dc_crtc_timing *timing)
{
 uint32_t bits_per_channel = 0;
 uint32_t kbps;
 switch (timing->display_color_depth) {
 case 129:
  bits_per_channel = 6;
  break;
 case 128:
  bits_per_channel = 8;
  break;
 case 133:
  bits_per_channel = 10;
  break;
 case 132:
  bits_per_channel = 12;
  break;
 case 131:
  bits_per_channel = 14;
  break;
 case 130:
  bits_per_channel = 16;
  break;
 default:
  break;
 }

 ASSERT(bits_per_channel != 0);

 kbps = timing->pix_clk_100hz / 10;
 kbps *= bits_per_channel;

 if (timing->flags.Y_ONLY != 1) {

  kbps *= 3;
  if (timing->pixel_encoding == PIXEL_ENCODING_YCBCR420)
   kbps /= 2;
  else if (timing->pixel_encoding == PIXEL_ENCODING_YCBCR422)
   kbps = kbps * 2 / 3;
 }

 return kbps;

}
