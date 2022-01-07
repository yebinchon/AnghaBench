
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_hdmi {int hdmi_reg; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc_state {int pipe_bpp; int pixel_multiplier; scalar_t__ has_audio; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 int HDMI_AUDIO_ENABLE ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int SDVO_ENABLE ;
 struct intel_hdmi* enc_to_intel_hdmi (TYPE_1__*) ;
 int intel_enable_hdmi_audio (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static void ibx_enable_hdmi(struct intel_encoder *encoder,
       const struct intel_crtc_state *pipe_config,
       const struct drm_connector_state *conn_state)
{
 struct drm_device *dev = encoder->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(&encoder->base);
 u32 temp;

 temp = I915_READ(intel_hdmi->hdmi_reg);

 temp |= SDVO_ENABLE;
 if (pipe_config->has_audio)
  temp |= HDMI_AUDIO_ENABLE;





 I915_WRITE(intel_hdmi->hdmi_reg, temp);
 POSTING_READ(intel_hdmi->hdmi_reg);
 I915_WRITE(intel_hdmi->hdmi_reg, temp);
 POSTING_READ(intel_hdmi->hdmi_reg);
 if (pipe_config->pipe_bpp > 24 &&
     pipe_config->pixel_multiplier > 1) {
  I915_WRITE(intel_hdmi->hdmi_reg, temp & ~SDVO_ENABLE);
  POSTING_READ(intel_hdmi->hdmi_reg);





  I915_WRITE(intel_hdmi->hdmi_reg, temp);
  POSTING_READ(intel_hdmi->hdmi_reg);
  I915_WRITE(intel_hdmi->hdmi_reg, temp);
  POSTING_READ(intel_hdmi->hdmi_reg);
 }

 if (pipe_config->has_audio)
  intel_enable_hdmi_audio(encoder, pipe_config, conn_state);
}
