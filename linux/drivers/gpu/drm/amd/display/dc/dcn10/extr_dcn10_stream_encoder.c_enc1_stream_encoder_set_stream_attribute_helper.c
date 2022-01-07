
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcn10_stream_encoder {int dummy; } ;
struct dc_crtc_timing {int pixel_encoding; } ;


 int DIG_FE_CNTL ;

 int REG_UPDATE (int ,int ,int) ;
 int TMDS_COLOR_FORMAT ;
 int TMDS_PIXEL_ENCODING ;

void enc1_stream_encoder_set_stream_attribute_helper(
  struct dcn10_stream_encoder *enc1,
  struct dc_crtc_timing *crtc_timing)
{
 switch (crtc_timing->pixel_encoding) {
 case 128:
  REG_UPDATE(DIG_FE_CNTL, TMDS_PIXEL_ENCODING, 1);
  break;
 default:
  REG_UPDATE(DIG_FE_CNTL, TMDS_PIXEL_ENCODING, 0);
  break;
 }
 REG_UPDATE(DIG_FE_CNTL, TMDS_COLOR_FORMAT, 0);
}
