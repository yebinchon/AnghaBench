
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_hdmi {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct intel_encoder {int port; TYPE_2__ base; } ;
struct intel_digital_port {struct intel_hdmi hdmi; } ;
struct TYPE_3__ {int hdmi; int spd; int avi; } ;
struct intel_crtc_state {TYPE_1__ infoframes; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef int i915_reg_t ;


 int DRM_DEBUG_KMS (char*,int) ;
 int HDMI_INFOFRAME_TYPE_AVI ;
 int HDMI_INFOFRAME_TYPE_SPD ;
 int HDMI_INFOFRAME_TYPE_VENDOR ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int VIDEO_DIP_CTL ;
 int VIDEO_DIP_ENABLE ;
 int VIDEO_DIP_ENABLE_AVI ;
 int VIDEO_DIP_ENABLE_SPD ;
 int VIDEO_DIP_ENABLE_VENDOR ;
 int VIDEO_DIP_FREQ_VSYNC ;
 int VIDEO_DIP_PORT (int ) ;
 int VIDEO_DIP_PORT_MASK ;
 int VIDEO_DIP_SELECT_AVI ;
 int assert_hdmi_port_disabled (struct intel_hdmi*) ;
 struct intel_digital_port* enc_to_dig_port (TYPE_2__*) ;
 int intel_write_infoframe (struct intel_encoder*,struct intel_crtc_state const*,int ,int *) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void g4x_set_infoframes(struct intel_encoder *encoder,
          bool enable,
          const struct intel_crtc_state *crtc_state,
          const struct drm_connector_state *conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_digital_port *intel_dig_port = enc_to_dig_port(&encoder->base);
 struct intel_hdmi *intel_hdmi = &intel_dig_port->hdmi;
 i915_reg_t reg = VIDEO_DIP_CTL;
 u32 val = I915_READ(reg);
 u32 port = VIDEO_DIP_PORT(encoder->port);

 assert_hdmi_port_disabled(intel_hdmi);
 val |= VIDEO_DIP_SELECT_AVI | VIDEO_DIP_FREQ_VSYNC;

 if (!enable) {
  if (!(val & VIDEO_DIP_ENABLE))
   return;
  if (port != (val & VIDEO_DIP_PORT_MASK)) {
   DRM_DEBUG_KMS("video DIP still enabled on port %c\n",
          (val & VIDEO_DIP_PORT_MASK) >> 29);
   return;
  }
  val &= ~(VIDEO_DIP_ENABLE | VIDEO_DIP_ENABLE_AVI |
    VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_SPD);
  I915_WRITE(reg, val);
  POSTING_READ(reg);
  return;
 }

 if (port != (val & VIDEO_DIP_PORT_MASK)) {
  if (val & VIDEO_DIP_ENABLE) {
   DRM_DEBUG_KMS("video DIP already enabled on port %c\n",
          (val & VIDEO_DIP_PORT_MASK) >> 29);
   return;
  }
  val &= ~VIDEO_DIP_PORT_MASK;
  val |= port;
 }

 val |= VIDEO_DIP_ENABLE;
 val &= ~(VIDEO_DIP_ENABLE_AVI |
   VIDEO_DIP_ENABLE_VENDOR | VIDEO_DIP_ENABLE_SPD);

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
}
