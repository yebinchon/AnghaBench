
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct hdmi_avi_infoframe {int colorspace; int colorimetry; int extended_colorimetry; int scan_mode; int active_aspect; int top_bar; int bottom_bar; int left_bar; int right_bar; int picture_aspect; int quantization_range; int nups; int video_code; int ycc_quantization_range; int content_type; scalar_t__ itc; } ;
struct TYPE_3__ {int mpixelrepetitioninput; int mpixelrepetitionoutput; } ;
struct TYPE_4__ {int enc_out_encoding; TYPE_1__ video_mode; int enc_in_encoding; int enc_out_bus_format; } ;
struct dw_hdmi {TYPE_2__ hdmi_data; int connector; } ;
struct drm_display_mode {int dummy; } ;


 void* HDMI_COLORIMETRY_EXTENDED ;
 void* HDMI_COLORIMETRY_ITU_601 ;
 int HDMI_COLORIMETRY_ITU_709 ;
 int HDMI_COLORSPACE_RGB ;
 int HDMI_COLORSPACE_YUV420 ;
 int HDMI_COLORSPACE_YUV422 ;
 int HDMI_COLORSPACE_YUV444 ;
 void* HDMI_EXTENDED_COLORIMETRY_XV_YCC_601 ;
 int HDMI_EXTENDED_COLORIMETRY_XV_YCC_709 ;
 int HDMI_FC_AVICONF0 ;
 int HDMI_FC_AVICONF0_ACTIVE_FMT_INFO_PRESENT ;
 int HDMI_FC_AVICONF0_BAR_DATA_HORIZ_BAR ;
 int HDMI_FC_AVICONF0_BAR_DATA_VERT_BAR ;
 int HDMI_FC_AVICONF1 ;
 int HDMI_FC_AVICONF2 ;
 int HDMI_FC_AVICONF2_IT_CONTENT_VALID ;
 int HDMI_FC_AVICONF3 ;
 int HDMI_FC_AVIELB0 ;
 int HDMI_FC_AVIELB1 ;
 int HDMI_FC_AVIETB0 ;
 int HDMI_FC_AVIETB1 ;
 int HDMI_FC_AVISBB0 ;
 int HDMI_FC_AVISBB1 ;
 int HDMI_FC_AVISRB0 ;
 int HDMI_FC_AVISRB1 ;
 int HDMI_FC_AVIVID ;
 int HDMI_FC_PRCONF ;
 int HDMI_FC_PRCONF_INCOMING_PR_FACTOR_MASK ;
 int HDMI_FC_PRCONF_INCOMING_PR_FACTOR_OFFSET ;
 int HDMI_FC_PRCONF_OUTPUT_PR_FACTOR_MASK ;
 int HDMI_FC_PRCONF_OUTPUT_PR_FACTOR_OFFSET ;
 int HDMI_SCAN_MODE_NONE ;


 int V4L2_YCBCR_ENC_XV601 ;
 int V4L2_YCBCR_ENC_XV709 ;
 int drm_hdmi_avi_infoframe_from_display_mode (struct hdmi_avi_infoframe*,int *,struct drm_display_mode*) ;
 scalar_t__ hdmi_bus_fmt_is_yuv420 (int ) ;
 scalar_t__ hdmi_bus_fmt_is_yuv422 (int ) ;
 scalar_t__ hdmi_bus_fmt_is_yuv444 (int ) ;
 int hdmi_writeb (struct dw_hdmi*,int,int ) ;

__attribute__((used)) static void hdmi_config_AVI(struct dw_hdmi *hdmi, struct drm_display_mode *mode)
{
 struct hdmi_avi_infoframe frame;
 u8 val;


 drm_hdmi_avi_infoframe_from_display_mode(&frame,
       &hdmi->connector, mode);

 if (hdmi_bus_fmt_is_yuv444(hdmi->hdmi_data.enc_out_bus_format))
  frame.colorspace = HDMI_COLORSPACE_YUV444;
 else if (hdmi_bus_fmt_is_yuv422(hdmi->hdmi_data.enc_out_bus_format))
  frame.colorspace = HDMI_COLORSPACE_YUV422;
 else if (hdmi_bus_fmt_is_yuv420(hdmi->hdmi_data.enc_out_bus_format))
  frame.colorspace = HDMI_COLORSPACE_YUV420;
 else
  frame.colorspace = HDMI_COLORSPACE_RGB;


 switch (hdmi->hdmi_data.enc_out_encoding) {
 case 129:
  if (hdmi->hdmi_data.enc_in_encoding == V4L2_YCBCR_ENC_XV601)
   frame.colorimetry = HDMI_COLORIMETRY_EXTENDED;
  else
   frame.colorimetry = HDMI_COLORIMETRY_ITU_601;
  frame.extended_colorimetry =
    HDMI_EXTENDED_COLORIMETRY_XV_YCC_601;
  break;
 case 128:
  if (hdmi->hdmi_data.enc_in_encoding == V4L2_YCBCR_ENC_XV709)
   frame.colorimetry = HDMI_COLORIMETRY_EXTENDED;
  else
   frame.colorimetry = HDMI_COLORIMETRY_ITU_709;
  frame.extended_colorimetry =
    HDMI_EXTENDED_COLORIMETRY_XV_YCC_709;
  break;
 default:
  frame.colorimetry = HDMI_COLORIMETRY_ITU_601;
  frame.extended_colorimetry =
    HDMI_EXTENDED_COLORIMETRY_XV_YCC_601;
  break;
 }

 frame.scan_mode = HDMI_SCAN_MODE_NONE;
 val = (frame.scan_mode & 3) << 4 | (frame.colorspace & 3);
 if (frame.active_aspect & 15)
  val |= HDMI_FC_AVICONF0_ACTIVE_FMT_INFO_PRESENT;
 if (frame.top_bar || frame.bottom_bar)
  val |= HDMI_FC_AVICONF0_BAR_DATA_HORIZ_BAR;
 if (frame.left_bar || frame.right_bar)
  val |= HDMI_FC_AVICONF0_BAR_DATA_VERT_BAR;
 hdmi_writeb(hdmi, val, HDMI_FC_AVICONF0);


 val = ((frame.colorimetry & 0x3) << 6) |
       ((frame.picture_aspect & 0x3) << 4) |
       (frame.active_aspect & 0xf);
 hdmi_writeb(hdmi, val, HDMI_FC_AVICONF1);


 val = ((frame.extended_colorimetry & 0x7) << 4) |
       ((frame.quantization_range & 0x3) << 2) |
       (frame.nups & 0x3);
 if (frame.itc)
  val |= HDMI_FC_AVICONF2_IT_CONTENT_VALID;
 hdmi_writeb(hdmi, val, HDMI_FC_AVICONF2);


 val = frame.video_code & 0x7f;
 hdmi_writeb(hdmi, val, HDMI_FC_AVIVID);


 val = (((hdmi->hdmi_data.video_mode.mpixelrepetitioninput + 1) <<
  HDMI_FC_PRCONF_INCOMING_PR_FACTOR_OFFSET) &
  HDMI_FC_PRCONF_INCOMING_PR_FACTOR_MASK) |
  ((hdmi->hdmi_data.video_mode.mpixelrepetitionoutput <<
  HDMI_FC_PRCONF_OUTPUT_PR_FACTOR_OFFSET) &
  HDMI_FC_PRCONF_OUTPUT_PR_FACTOR_MASK);
 hdmi_writeb(hdmi, val, HDMI_FC_PRCONF);





 val = ((frame.ycc_quantization_range & 0x3) << 2) |
       (frame.content_type & 0x3);
 hdmi_writeb(hdmi, val, HDMI_FC_AVICONF3);


 hdmi_writeb(hdmi, frame.top_bar & 0xff, HDMI_FC_AVIETB0);
 hdmi_writeb(hdmi, (frame.top_bar >> 8) & 0xff, HDMI_FC_AVIETB1);
 hdmi_writeb(hdmi, frame.bottom_bar & 0xff, HDMI_FC_AVISBB0);
 hdmi_writeb(hdmi, (frame.bottom_bar >> 8) & 0xff, HDMI_FC_AVISBB1);
 hdmi_writeb(hdmi, frame.left_bar & 0xff, HDMI_FC_AVIELB0);
 hdmi_writeb(hdmi, (frame.left_bar >> 8) & 0xff, HDMI_FC_AVIELB1);
 hdmi_writeb(hdmi, frame.right_bar & 0xff, HDMI_FC_AVISRB0);
 hdmi_writeb(hdmi, (frame.right_bar >> 8) & 0xff, HDMI_FC_AVISRB1);
}
