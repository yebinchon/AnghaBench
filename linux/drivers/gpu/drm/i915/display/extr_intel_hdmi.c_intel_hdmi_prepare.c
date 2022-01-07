
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_hdmi {int hdmi_reg; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct drm_display_mode {int flags; } ;
struct TYPE_3__ {struct drm_display_mode adjusted_mode; int crtc; } ;
struct intel_crtc_state {int pipe_bpp; scalar_t__ has_hdmi_sink; scalar_t__ limited_color_range; TYPE_1__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_FLAG_PHSYNC ;
 int DRM_MODE_FLAG_PVSYNC ;
 scalar_t__ HAS_PCH_CPT (struct drm_i915_private*) ;
 int HAS_PCH_SPLIT (struct drm_i915_private*) ;
 int HDMI_COLOR_FORMAT_12bpc ;
 int HDMI_COLOR_RANGE_16_235 ;
 int HDMI_MODE_SELECT_HDMI ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 int POSTING_READ (int ) ;
 int SDVO_COLOR_FORMAT_8bpc ;
 int SDVO_ENCODING_HDMI ;
 int SDVO_HSYNC_ACTIVE_HIGH ;
 int SDVO_PIPE_SEL (int ) ;
 int SDVO_PIPE_SEL_CHV (int ) ;
 int SDVO_PIPE_SEL_CPT (int ) ;
 int SDVO_VSYNC_ACTIVE_HIGH ;
 struct intel_hdmi* enc_to_intel_hdmi (TYPE_2__*) ;
 int intel_dp_dual_mode_set_tmds_output (struct intel_hdmi*,int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void intel_hdmi_prepare(struct intel_encoder *encoder,
          const struct intel_crtc_state *crtc_state)
{
 struct drm_device *dev = encoder->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(&encoder->base);
 const struct drm_display_mode *adjusted_mode = &crtc_state->base.adjusted_mode;
 u32 hdmi_val;

 intel_dp_dual_mode_set_tmds_output(intel_hdmi, 1);

 hdmi_val = SDVO_ENCODING_HDMI;
 if (!HAS_PCH_SPLIT(dev_priv) && crtc_state->limited_color_range)
  hdmi_val |= HDMI_COLOR_RANGE_16_235;
 if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
  hdmi_val |= SDVO_VSYNC_ACTIVE_HIGH;
 if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC)
  hdmi_val |= SDVO_HSYNC_ACTIVE_HIGH;

 if (crtc_state->pipe_bpp > 24)
  hdmi_val |= HDMI_COLOR_FORMAT_12bpc;
 else
  hdmi_val |= SDVO_COLOR_FORMAT_8bpc;

 if (crtc_state->has_hdmi_sink)
  hdmi_val |= HDMI_MODE_SELECT_HDMI;

 if (HAS_PCH_CPT(dev_priv))
  hdmi_val |= SDVO_PIPE_SEL_CPT(crtc->pipe);
 else if (IS_CHERRYVIEW(dev_priv))
  hdmi_val |= SDVO_PIPE_SEL_CHV(crtc->pipe);
 else
  hdmi_val |= SDVO_PIPE_SEL(crtc->pipe);

 I915_WRITE(intel_hdmi->hdmi_reg, hdmi_val);
 POSTING_READ(intel_hdmi->hdmi_reg);
}
