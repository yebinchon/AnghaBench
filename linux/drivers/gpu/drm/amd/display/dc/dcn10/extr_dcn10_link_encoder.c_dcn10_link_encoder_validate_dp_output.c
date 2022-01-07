
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dp_ycbcr420_supported; } ;
struct TYPE_4__ {TYPE_1__ features; } ;
struct dcn10_link_encoder {TYPE_2__ base; } ;
struct dc_crtc_timing {scalar_t__ pixel_encoding; } ;


 scalar_t__ PIXEL_ENCODING_YCBCR420 ;

bool dcn10_link_encoder_validate_dp_output(
 const struct dcn10_link_encoder *enc10,
 const struct dc_crtc_timing *crtc_timing)
{
 if (crtc_timing->pixel_encoding == PIXEL_ENCODING_YCBCR420) {
  if (!enc10->base.features.dp_ycbcr420_supported)
   return 0;
 }

 return 1;
}
