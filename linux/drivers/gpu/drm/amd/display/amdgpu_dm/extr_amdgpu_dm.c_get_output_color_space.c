
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Y_ONLY; } ;
struct dc_crtc_timing {int pixel_encoding; int pix_clk_100hz; TYPE_1__ flags; } ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;


 int COLOR_SPACE_SRGB ;
 int COLOR_SPACE_YCBCR601 ;
 int COLOR_SPACE_YCBCR601_LIMITED ;
 int COLOR_SPACE_YCBCR709 ;
 int COLOR_SPACE_YCBCR709_LIMITED ;




 int WARN_ON (int) ;

__attribute__((used)) static enum dc_color_space
get_output_color_space(const struct dc_crtc_timing *dc_crtc_timing)
{
 enum dc_color_space color_space = COLOR_SPACE_SRGB;

 switch (dc_crtc_timing->pixel_encoding) {
 case 129:
 case 128:
 case 130:
 {





  if (dc_crtc_timing->pix_clk_100hz > 270300) {
   if (dc_crtc_timing->flags.Y_ONLY)
    color_space =
     COLOR_SPACE_YCBCR709_LIMITED;
   else
    color_space = COLOR_SPACE_YCBCR709;
  } else {
   if (dc_crtc_timing->flags.Y_ONLY)
    color_space =
     COLOR_SPACE_YCBCR601_LIMITED;
   else
    color_space = COLOR_SPACE_YCBCR601;
  }

 }
 break;
 case 131:
  color_space = COLOR_SPACE_SRGB;
  break;

 default:
  WARN_ON(1);
  break;
 }

 return color_space;
}
