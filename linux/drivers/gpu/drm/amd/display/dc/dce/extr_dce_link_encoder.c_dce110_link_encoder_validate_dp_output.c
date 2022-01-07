
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce110_link_encoder {int dummy; } ;
struct dc_crtc_timing {scalar_t__ pixel_encoding; } ;


 scalar_t__ PIXEL_ENCODING_YCBCR420 ;

bool dce110_link_encoder_validate_dp_output(
 const struct dce110_link_encoder *enc110,
 const struct dc_crtc_timing *crtc_timing)
{
 if (crtc_timing->pixel_encoding == PIXEL_ENCODING_YCBCR420)
  return 0;

 return 1;
}
