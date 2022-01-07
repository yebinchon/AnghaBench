
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int HDMI_6GB_EN; } ;
struct TYPE_9__ {TYPE_1__ bits; } ;
struct TYPE_10__ {int max_hdmi_deep_color; int max_hdmi_pixel_clock; TYPE_2__ flags; int hdmi_ycbcr420_supported; } ;
struct TYPE_14__ {TYPE_6__* ctx; TYPE_3__ features; } ;
struct dce110_link_encoder {TYPE_7__ base; } ;
struct dc_crtc_timing {int display_color_depth; scalar_t__ pixel_encoding; } ;
typedef enum dc_color_depth { ____Placeholder_dc_color_depth } dc_color_depth ;
struct TYPE_13__ {TYPE_5__* dc; } ;
struct TYPE_11__ {scalar_t__ hdmi20_disable; } ;
struct TYPE_12__ {TYPE_4__ debug; } ;


 scalar_t__ COLOR_DEPTH_888 ;
 scalar_t__ PIXEL_ENCODING_YCBCR420 ;
 int TMDS_MIN_PIXEL_CLOCK ;

__attribute__((used)) static bool dce110_link_encoder_validate_hdmi_output(
 const struct dce110_link_encoder *enc110,
 const struct dc_crtc_timing *crtc_timing,
 int adjusted_pix_clk_khz)
{
 enum dc_color_depth max_deep_color =
   enc110->base.features.max_hdmi_deep_color;

 if (max_deep_color < crtc_timing->display_color_depth)
  return 0;

 if (crtc_timing->display_color_depth < COLOR_DEPTH_888)
  return 0;
 if (adjusted_pix_clk_khz < TMDS_MIN_PIXEL_CLOCK)
  return 0;

 if ((adjusted_pix_clk_khz == 0) ||
  (adjusted_pix_clk_khz > enc110->base.features.max_hdmi_pixel_clock))
  return 0;


 if (!enc110->base.features.hdmi_ycbcr420_supported &&
   crtc_timing->pixel_encoding == PIXEL_ENCODING_YCBCR420)
  return 0;

 if (!enc110->base.features.flags.bits.HDMI_6GB_EN &&
  adjusted_pix_clk_khz >= 300000)
  return 0;
 if (enc110->base.ctx->dc->debug.hdmi20_disable &&
  crtc_timing->pixel_encoding == PIXEL_ENCODING_YCBCR420)
  return 0;
 return 1;
}
