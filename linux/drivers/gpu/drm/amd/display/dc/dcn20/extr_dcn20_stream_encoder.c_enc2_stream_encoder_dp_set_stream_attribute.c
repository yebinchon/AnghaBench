
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stream_encoder {int dummy; } ;
struct dcn10_stream_encoder {int dummy; } ;
struct dc_crtc_timing {int dummy; } ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;


 struct dcn10_stream_encoder* DCN10STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DP_SEC_FRAMING4 ;
 int DP_SST_SDP_SPLITTING ;
 int REG_UPDATE (int ,int ,int ) ;
 int enc1_stream_encoder_dp_set_stream_attribute (struct stream_encoder*,struct dc_crtc_timing*,int,int ) ;

void enc2_stream_encoder_dp_set_stream_attribute(
 struct stream_encoder *enc,
 struct dc_crtc_timing *crtc_timing,
 enum dc_color_space output_color_space,
 uint32_t enable_sdp_splitting)
{
 struct dcn10_stream_encoder *enc1 = DCN10STRENC_FROM_STRENC(enc);

 enc1_stream_encoder_dp_set_stream_attribute(enc, crtc_timing, output_color_space, enable_sdp_splitting);

 REG_UPDATE(DP_SEC_FRAMING4,
  DP_SST_SDP_SPLITTING, enable_sdp_splitting);
}
