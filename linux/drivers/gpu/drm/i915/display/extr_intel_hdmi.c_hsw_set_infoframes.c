
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct TYPE_4__ {int drm; int hdmi; int spd; int avi; } ;
struct intel_crtc_state {TYPE_2__ infoframes; int cpu_transcoder; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef int i915_reg_t ;


 int HDMI_INFOFRAME_TYPE_AVI ;
 int HDMI_INFOFRAME_TYPE_DRM ;
 int HDMI_INFOFRAME_TYPE_SPD ;
 int HDMI_INFOFRAME_TYPE_VENDOR ;
 int HSW_TVIDEO_DIP_CTL (int ) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int VIDEO_DIP_ENABLE_AVI_HSW ;
 int VIDEO_DIP_ENABLE_DRM_GLK ;
 int VIDEO_DIP_ENABLE_GCP_HSW ;
 int VIDEO_DIP_ENABLE_GMP_HSW ;
 int VIDEO_DIP_ENABLE_SPD_HSW ;
 int VIDEO_DIP_ENABLE_VSC_HSW ;
 int VIDEO_DIP_ENABLE_VS_HSW ;
 int assert_hdmi_transcoder_func_disabled (struct drm_i915_private*,int ) ;
 scalar_t__ intel_hdmi_set_gcp_infoframe (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int intel_write_infoframe (struct intel_encoder*,struct intel_crtc_state const*,int ,int *) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void hsw_set_infoframes(struct intel_encoder *encoder,
          bool enable,
          const struct intel_crtc_state *crtc_state,
          const struct drm_connector_state *conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 i915_reg_t reg = HSW_TVIDEO_DIP_CTL(crtc_state->cpu_transcoder);
 u32 val = I915_READ(reg);

 assert_hdmi_transcoder_func_disabled(dev_priv,
          crtc_state->cpu_transcoder);

 val &= ~(VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
   VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
   VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW |
   VIDEO_DIP_ENABLE_DRM_GLK);

 if (!enable) {
  I915_WRITE(reg, val);
  POSTING_READ(reg);
  return;
 }

 if (intel_hdmi_set_gcp_infoframe(encoder, crtc_state, conn_state))
  val |= VIDEO_DIP_ENABLE_GCP_HSW;

 I915_WRITE(reg, val);
 POSTING_READ(reg);

 intel_write_infoframe(encoder, crtc_state,
         HDMI_INFOFRAME_TYPE_AVI,
         &crtc_state->infoframes.avi);
 intel_write_infoframe(encoder, crtc_state,
         HDMI_INFOFRAME_TYPE_SPD,
         &crtc_state->infoframes.spd);
 intel_write_infoframe(encoder, crtc_state,
         HDMI_INFOFRAME_TYPE_VENDOR,
         &crtc_state->infoframes.hdmi);
 intel_write_infoframe(encoder, crtc_state,
         HDMI_INFOFRAME_TYPE_DRM,
         &crtc_state->infoframes.drm);
}
