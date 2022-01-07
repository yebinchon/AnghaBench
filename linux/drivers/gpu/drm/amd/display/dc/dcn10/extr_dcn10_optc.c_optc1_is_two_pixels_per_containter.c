
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ycbcr422_simple; } ;
struct TYPE_3__ {scalar_t__ DSC; } ;
struct dc_crtc_timing {scalar_t__ pixel_encoding; TYPE_2__ dsc_cfg; TYPE_1__ flags; } ;


 scalar_t__ PIXEL_ENCODING_YCBCR420 ;
 scalar_t__ PIXEL_ENCODING_YCBCR422 ;

bool optc1_is_two_pixels_per_containter(const struct dc_crtc_timing *timing)
{
 bool two_pix = timing->pixel_encoding == PIXEL_ENCODING_YCBCR420;





 return two_pix;
}
