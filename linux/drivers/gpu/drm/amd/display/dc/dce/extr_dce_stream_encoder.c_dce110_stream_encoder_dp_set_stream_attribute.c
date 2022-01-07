
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct stream_encoder {int dummy; } ;
struct dce110_stream_encoder {TYPE_1__* se_mask; } ;
struct TYPE_4__ {int VSYNC_POSITIVE_POLARITY; int HSYNC_POSITIVE_POLARITY; int Y_ONLY; scalar_t__ INTERLACE; } ;
struct dc_crtc_timing {int v_total; int v_border_top; int v_addressable; int v_border_bottom; int v_front_porch; int v_sync_width; int pixel_encoding; int display_color_depth; int h_total; int h_border_left; int h_addressable; int h_border_right; int h_front_porch; int h_sync_width; TYPE_2__ flags; } ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;
struct TYPE_3__ {scalar_t__ DP_YCBCR_RANGE; scalar_t__ DP_DYN_RANGE; int DP_VID_N_MUL; int DP_VID_M_DOUBLE_VALUE_EN; } ;
 struct dce110_stream_encoder* DCE110STRENC_FROM_STRENC (struct stream_encoder*) ;
 int DP_COMPONENT_DEPTH ;
 int DP_COMPONENT_PIXEL_DEPTH_10BPC ;
 int DP_COMPONENT_PIXEL_DEPTH_12BPC ;
 int DP_COMPONENT_PIXEL_DEPTH_6BPC ;
 int DP_COMPONENT_PIXEL_DEPTH_8BPC ;
 int DP_DYN_RANGE ;
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
 int DP_VID_M_DOUBLE_VALUE_EN ;
 int DP_VID_N_MUL ;
 int DP_VID_TIMING ;
 int DP_YCBCR_RANGE ;



 scalar_t__ REG (int ) ;
 int REG_READ (int ) ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_SET_2 (int ,int ,int ,int,int ,int) ;
 int REG_SET_4 (int ,int ,int ,int,int ,int,int ,int,int ,int) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int REG_WRITE (int ,int) ;

__attribute__((used)) static void dce110_stream_encoder_dp_set_stream_attribute(
 struct stream_encoder *enc,
 struct dc_crtc_timing *crtc_timing,
 enum dc_color_space output_color_space,
 uint32_t enable_sdp_splitting)
{
 struct dce110_stream_encoder *enc110 = DCE110STRENC_FROM_STRENC(enc);
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
  REG_UPDATE(DP_PIXEL_FORMAT, DP_PIXEL_ENCODING,
    DP_PIXEL_ENCODING_TYPE_YCBCR422);
  break;
 case 128:
  REG_UPDATE(DP_PIXEL_FORMAT, DP_PIXEL_ENCODING,
    DP_PIXEL_ENCODING_TYPE_YCBCR444);

  if (hw_crtc_timing.flags.Y_ONLY)
   if (hw_crtc_timing.display_color_depth != 153)



    REG_UPDATE(DP_PIXEL_FORMAT, DP_PIXEL_ENCODING,
      DP_PIXEL_ENCODING_TYPE_Y_ONLY);




  break;
 case 130:
  REG_UPDATE(DP_PIXEL_FORMAT, DP_PIXEL_ENCODING,
    DP_PIXEL_ENCODING_TYPE_YCBCR420);
  if (enc110->se_mask->DP_VID_M_DOUBLE_VALUE_EN)
   REG_UPDATE(DP_VID_TIMING, DP_VID_M_DOUBLE_VALUE_EN, 1);





  break;
 default:
  REG_UPDATE(DP_PIXEL_FORMAT, DP_PIXEL_ENCODING,
    DP_PIXEL_ENCODING_TYPE_RGB444);
  break;
 }
 switch (hw_crtc_timing.display_color_depth) {
 case 153:
  REG_UPDATE(DP_PIXEL_FORMAT, DP_COMPONENT_DEPTH,
    0);
  break;
 case 152:
  REG_UPDATE(DP_PIXEL_FORMAT, DP_COMPONENT_DEPTH,
    DP_COMPONENT_PIXEL_DEPTH_8BPC);
  break;
 case 155:
  REG_UPDATE(DP_PIXEL_FORMAT, DP_COMPONENT_DEPTH,
    DP_COMPONENT_PIXEL_DEPTH_10BPC);

  break;
 case 154:
  REG_UPDATE(DP_PIXEL_FORMAT, DP_COMPONENT_DEPTH,
    DP_COMPONENT_PIXEL_DEPTH_12BPC);
  break;
 default:
  REG_UPDATE(DP_PIXEL_FORMAT, DP_COMPONENT_DEPTH,
    DP_COMPONENT_PIXEL_DEPTH_6BPC);
  break;
 }
}
