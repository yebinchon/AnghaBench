
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_encoder {int dummy; } ;
struct hdmi_avi_infoframe {int colorspace; } ;
struct TYPE_4__ {struct hdmi_avi_infoframe avi; } ;
struct TYPE_6__ {int enable; TYPE_1__ avi; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_5__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {scalar_t__ output_format; scalar_t__ limited_color_range; TYPE_3__ infoframes; int has_infoframe; TYPE_2__ base; } ;
struct drm_connector_state {struct drm_connector* connector; } ;
struct drm_connector {int dummy; } ;


 int HDMI_COLORSPACE_RGB ;
 int HDMI_COLORSPACE_YUV420 ;
 int HDMI_COLORSPACE_YUV444 ;
 int HDMI_INFOFRAME_TYPE_AVI ;
 int HDMI_QUANTIZATION_RANGE_FULL ;
 int HDMI_QUANTIZATION_RANGE_LIMITED ;
 scalar_t__ INTEL_OUTPUT_FORMAT_YCBCR420 ;
 scalar_t__ INTEL_OUTPUT_FORMAT_YCBCR444 ;
 scalar_t__ WARN_ON (int) ;
 int drm_hdmi_avi_infoframe_colorspace (struct hdmi_avi_infoframe*,struct drm_connector_state*) ;
 int drm_hdmi_avi_infoframe_content_type (struct hdmi_avi_infoframe*,struct drm_connector_state*) ;
 int drm_hdmi_avi_infoframe_from_display_mode (struct hdmi_avi_infoframe*,struct drm_connector*,struct drm_display_mode const*) ;
 int drm_hdmi_avi_infoframe_quant_range (struct hdmi_avi_infoframe*,struct drm_connector*,struct drm_display_mode const*,int ) ;
 int hdmi_avi_infoframe_check (struct hdmi_avi_infoframe*) ;
 int intel_hdmi_infoframe_enable (int ) ;

__attribute__((used)) static bool
intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
     struct intel_crtc_state *crtc_state,
     struct drm_connector_state *conn_state)
{
 struct hdmi_avi_infoframe *frame = &crtc_state->infoframes.avi.avi;
 const struct drm_display_mode *adjusted_mode =
  &crtc_state->base.adjusted_mode;
 struct drm_connector *connector = conn_state->connector;
 int ret;

 if (!crtc_state->has_infoframe)
  return 1;

 crtc_state->infoframes.enable |=
  intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI);

 ret = drm_hdmi_avi_infoframe_from_display_mode(frame, connector,
             adjusted_mode);
 if (ret)
  return 0;

 if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
  frame->colorspace = HDMI_COLORSPACE_YUV420;
 else if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444)
  frame->colorspace = HDMI_COLORSPACE_YUV444;
 else
  frame->colorspace = HDMI_COLORSPACE_RGB;

 drm_hdmi_avi_infoframe_colorspace(frame, conn_state);

 drm_hdmi_avi_infoframe_quant_range(frame, connector,
        adjusted_mode,
        crtc_state->limited_color_range ?
        HDMI_QUANTIZATION_RANGE_LIMITED :
        HDMI_QUANTIZATION_RANGE_FULL);

 drm_hdmi_avi_infoframe_content_type(frame, conn_state);



 ret = hdmi_avi_infoframe_check(frame);
 if (WARN_ON(ret))
  return 0;

 return 1;
}
