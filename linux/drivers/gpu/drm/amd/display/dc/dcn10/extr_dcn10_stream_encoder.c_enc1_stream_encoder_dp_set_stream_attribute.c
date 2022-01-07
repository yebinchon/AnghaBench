
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct stream_encoder {int dummy; } ;
struct dcn10_stream_encoder {int dummy; } ;
struct TYPE_2__ {int VSYNC_POSITIVE_POLARITY; int HSYNC_POSITIVE_POLARITY; int Y_ONLY; scalar_t__ INTERLACE; } ;
struct dc_crtc_timing {int v_total; int v_border_top; int v_addressable; int v_border_bottom; int v_front_porch; int v_sync_width; int pixel_encoding; int display_color_depth; int h_total; int h_border_left; int h_addressable; int h_border_right; int h_front_porch; int h_sync_width; TYPE_1__ flags; } ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;
 struct dcn10_stream_encoder* DCN10STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DP_COMPONENT_DEPTH ;
 int DP_COMPONENT_PIXEL_DEPTH_10BPC ;
 int DP_COMPONENT_PIXEL_DEPTH_12BPC ;
 int DP_COMPONENT_PIXEL_DEPTH_16BPC ;
 int DP_COMPONENT_PIXEL_DEPTH_6BPC ;
 int DP_COMPONENT_PIXEL_DEPTH_8BPC ;
 int DP_MSA_COLORIMETRY ;
 int DP_MSA_HSTART ;
 int DP_MSA_HSYNCPOLARITY ;
 int DP_MSA_HSYNCWIDTH ;
 int DP_MSA_HTOTAL ;
 int DP_MSA_HWIDTH ;
 int DP_MSA_MISC ;
 int DP_MSA_MISC0 ;
 int DP_MSA_TIMING_PARAM1 ;
 int DP_MSA_TIMING_PARAM2 ;
 int DP_MSA_TIMING_PARAM3 ;
 int DP_MSA_TIMING_PARAM4 ;
 int DP_MSA_VHEIGHT ;
 int DP_MSA_VSTART ;
 int DP_MSA_VSYNCPOLARITY ;
 int DP_MSA_VSYNCWIDTH ;
 int DP_MSA_VTOTAL ;
 int DP_PIXEL_ENCODING ;
 int DP_PIXEL_ENCODING_TYPE_RGB444 ;
 int DP_PIXEL_ENCODING_TYPE_YCBCR420 ;
 int DP_PIXEL_ENCODING_TYPE_YCBCR422 ;
 int DP_PIXEL_ENCODING_TYPE_YCBCR444 ;
 int DP_PIXEL_ENCODING_TYPE_Y_ONLY ;
 int DP_PIXEL_FORMAT ;



 int REG_READ (int ) ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_SET_2 (int ,int ,int ,int,int ,int) ;
 int REG_SET_4 (int ,int ,int ,int,int ,int,int ,int,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int REG_WRITE (int ,int) ;

void enc1_stream_encoder_dp_set_stream_attribute(
 struct stream_encoder *enc,
 struct dc_crtc_timing *crtc_timing,
 enum dc_color_space output_color_space,
 uint32_t enable_sdp_splitting)
{
 uint32_t h_active_start;
 uint32_t v_active_start;
 uint32_t misc0 = 0;
 uint32_t misc1 = 0;
 uint32_t h_blank;
 uint32_t h_back_porch;
 uint8_t synchronous_clock = 0;
 uint8_t colorimetry_bpc;
 uint8_t dynamic_range_rgb = 0;
 uint8_t dynamic_range_ycbcr = 1;
 uint8_t dp_pixel_encoding = 0;
 uint8_t dp_component_depth = 0;

 struct dcn10_stream_encoder *enc1 = DCN10STRENC_FROM_STRENC(enc);
 struct dc_crtc_timing hw_crtc_timing = *crtc_timing;

 if (hw_crtc_timing.flags.INTERLACE) {

  hw_crtc_timing.v_total /= 2;
  hw_crtc_timing.v_border_top /= 2;
  hw_crtc_timing.v_addressable /= 2;
  hw_crtc_timing.v_border_bottom /= 2;
  hw_crtc_timing.v_front_porch /= 2;
  hw_crtc_timing.v_sync_width /= 2;
 }



 switch (hw_crtc_timing.pixel_encoding) {
 case 129:
  dp_pixel_encoding = DP_PIXEL_ENCODING_TYPE_YCBCR422;
  break;
 case 128:
  dp_pixel_encoding = DP_PIXEL_ENCODING_TYPE_YCBCR444;

  if (hw_crtc_timing.flags.Y_ONLY)
   if (hw_crtc_timing.display_color_depth != 153)




    dp_pixel_encoding = DP_PIXEL_ENCODING_TYPE_Y_ONLY;






  break;
 case 130:
  dp_pixel_encoding = DP_PIXEL_ENCODING_TYPE_YCBCR420;
  break;
 default:
  dp_pixel_encoding = DP_PIXEL_ENCODING_TYPE_RGB444;
  break;
 }

 misc1 = REG_READ(DP_MSA_MISC);





 if ((hw_crtc_timing.pixel_encoding == 130) ||
   (output_color_space == 149) ||
   (output_color_space == 151) ||
   (output_color_space == 150))
  misc1 = misc1 | 0x40;
 else
  misc1 = misc1 & ~0x40;


 switch (hw_crtc_timing.display_color_depth) {
 case 153:
  dp_component_depth = DP_COMPONENT_PIXEL_DEPTH_6BPC;
  break;
 case 152:
  dp_component_depth = DP_COMPONENT_PIXEL_DEPTH_8BPC;
  break;
 case 156:
  dp_component_depth = DP_COMPONENT_PIXEL_DEPTH_10BPC;
  break;
 case 155:
  dp_component_depth = DP_COMPONENT_PIXEL_DEPTH_12BPC;
  break;
 case 154:
  dp_component_depth = DP_COMPONENT_PIXEL_DEPTH_16BPC;
  break;
 default:
  dp_component_depth = DP_COMPONENT_PIXEL_DEPTH_6BPC;
  break;
 }


 REG_UPDATE_2(DP_PIXEL_FORMAT,
   DP_PIXEL_ENCODING, dp_pixel_encoding,
   DP_COMPONENT_DEPTH, dp_component_depth);



 switch (hw_crtc_timing.display_color_depth) {
 case 153:
  colorimetry_bpc = 0;
  break;
 case 152:
  colorimetry_bpc = 1;
  break;
 case 156:
  colorimetry_bpc = 2;
  break;
 case 155:
  colorimetry_bpc = 3;
  break;
 default:
  colorimetry_bpc = 0;
  break;
 }

 misc0 = misc0 | synchronous_clock;
 misc0 = colorimetry_bpc << 5;

 switch (output_color_space) {
 case 141:
  misc1 = misc1 & ~0x80;
  dynamic_range_rgb = 0;
  break;
 case 140:
  misc0 = misc0 | 0x8;
  misc1 = misc1 & ~0x80;
  dynamic_range_rgb = 1;
  break;
 case 135:
 case 134:
  misc0 = misc0 | 0x8;
  misc1 = misc1 & ~0x80;
  dynamic_range_ycbcr = 0;
  if (hw_crtc_timing.pixel_encoding == 129)
   misc0 = misc0 | 0x2;
  else if (hw_crtc_timing.pixel_encoding == 128)
   misc0 = misc0 | 0x4;
  break;
 case 133:
 case 131:
  misc0 = misc0 | 0x18;
  misc1 = misc1 & ~0x80;
  dynamic_range_ycbcr = 1;
  if (hw_crtc_timing.pixel_encoding == 129)
   misc0 = misc0 | 0x2;
  else if (hw_crtc_timing.pixel_encoding == 128)
   misc0 = misc0 | 0x4;
  break;
 case 150:
  dynamic_range_rgb = 1;
  break;
 case 151:
 case 149:
 case 138:
 case 142:
 case 148:
 case 145:
 case 136:
 case 137:
 case 144:
 case 143:
 case 147:
 case 146:
 case 139:
 case 132:

  break;
 }

 REG_SET(DP_MSA_COLORIMETRY, 0, DP_MSA_MISC0, misc0);
 REG_WRITE(DP_MSA_MISC, misc1);




 REG_SET_2(DP_MSA_TIMING_PARAM1, 0,
   DP_MSA_HTOTAL, hw_crtc_timing.h_total,
   DP_MSA_VTOTAL, hw_crtc_timing.v_total);





 h_blank = hw_crtc_timing.h_total - hw_crtc_timing.h_border_left -
   hw_crtc_timing.h_addressable - hw_crtc_timing.h_border_right;

 h_back_porch = h_blank - hw_crtc_timing.h_front_porch -
   hw_crtc_timing.h_sync_width;


 h_active_start = hw_crtc_timing.h_sync_width + h_back_porch;


 v_active_start = hw_crtc_timing.v_total - hw_crtc_timing.v_border_top -
   hw_crtc_timing.v_addressable - hw_crtc_timing.v_border_bottom -
   hw_crtc_timing.v_front_porch;



 REG_SET_2(DP_MSA_TIMING_PARAM2, 0,
  DP_MSA_HSTART, h_active_start,
  DP_MSA_VSTART, v_active_start);

 REG_SET_4(DP_MSA_TIMING_PARAM3, 0,
   DP_MSA_HSYNCWIDTH,
   hw_crtc_timing.h_sync_width,
   DP_MSA_HSYNCPOLARITY,
   !hw_crtc_timing.flags.HSYNC_POSITIVE_POLARITY,
   DP_MSA_VSYNCWIDTH,
   hw_crtc_timing.v_sync_width,
   DP_MSA_VSYNCPOLARITY,
   !hw_crtc_timing.flags.VSYNC_POSITIVE_POLARITY);


 REG_SET_2(DP_MSA_TIMING_PARAM4, 0,
  DP_MSA_HWIDTH, hw_crtc_timing.h_border_left +
  hw_crtc_timing.h_addressable + hw_crtc_timing.h_border_right,
  DP_MSA_VHEIGHT, hw_crtc_timing.v_border_top +
  hw_crtc_timing.v_addressable + hw_crtc_timing.v_border_bottom);
}
