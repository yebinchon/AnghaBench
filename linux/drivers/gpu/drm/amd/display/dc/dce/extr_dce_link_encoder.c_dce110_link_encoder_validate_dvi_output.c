
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int max_hdmi_pixel_clock; } ;
struct TYPE_3__ {TYPE_2__ features; } ;
struct dce110_link_encoder {TYPE_1__ base; } ;
struct dc_crtc_timing {scalar_t__ pixel_encoding; int pix_clk_100hz; int display_color_depth; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;






 scalar_t__ PIXEL_ENCODING_RGB ;
 int SIGNAL_TYPE_DVI_DUAL_LINK ;
 int SIGNAL_TYPE_DVI_SINGLE_LINK ;
 int SIGNAL_TYPE_HDMI_TYPE_A ;
 int TMDS_MAX_PIXEL_CLOCK ;
 int TMDS_MIN_PIXEL_CLOCK ;

bool dce110_link_encoder_validate_dvi_output(
 const struct dce110_link_encoder *enc110,
 enum signal_type connector_signal,
 enum signal_type signal,
 const struct dc_crtc_timing *crtc_timing)
{
 uint32_t max_pixel_clock = TMDS_MAX_PIXEL_CLOCK;

 if (signal == SIGNAL_TYPE_DVI_DUAL_LINK)
  max_pixel_clock *= 2;




 if (connector_signal != SIGNAL_TYPE_DVI_DUAL_LINK &&
   connector_signal != SIGNAL_TYPE_DVI_SINGLE_LINK)
  max_pixel_clock = enc110->base.features.max_hdmi_pixel_clock;


 if (crtc_timing->pixel_encoding != PIXEL_ENCODING_RGB)
  return 0;


 if ((connector_signal == SIGNAL_TYPE_DVI_SINGLE_LINK ||
  connector_signal == SIGNAL_TYPE_HDMI_TYPE_A) &&
  signal != SIGNAL_TYPE_HDMI_TYPE_A &&
  crtc_timing->pix_clk_100hz > (TMDS_MAX_PIXEL_CLOCK * 10))
  return 0;
 if (crtc_timing->pix_clk_100hz < (TMDS_MIN_PIXEL_CLOCK * 10))
  return 0;

 if (crtc_timing->pix_clk_100hz > (max_pixel_clock * 10))
  return 0;


 switch (crtc_timing->display_color_depth) {
 case 129:
 case 128:
 break;
 case 131:
 case 130:
  if (signal != SIGNAL_TYPE_DVI_DUAL_LINK)
   return 0;
 break;
 default:
  return 0;
 }

 return 1;
}
