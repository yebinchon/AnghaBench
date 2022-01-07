
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {int cpu_transcoder; TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct drm_i915_private {int quirks; } ;
typedef int i915_reg_t ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;


 int DRM_DEBUG_KMS (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int INTEL_OUTPUT_HDMI ;
 int QUIRK_INCREASE_DDI_DISABLED_TIME ;
 int TGL_TRANS_DDI_PORT_MASK ;
 int TRANS_DDI_DP_VC_PAYLOAD_ALLOC ;
 int TRANS_DDI_FUNC_CTL (int) ;
 int TRANS_DDI_FUNC_ENABLE ;
 int TRANS_DDI_PORT_MASK ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state const*,int ) ;
 int msleep (int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 i915_reg_t reg = TRANS_DDI_FUNC_CTL(cpu_transcoder);
 u32 val = I915_READ(reg);

 if (INTEL_GEN(dev_priv) >= 12) {
  val &= ~(TRANS_DDI_FUNC_ENABLE | TGL_TRANS_DDI_PORT_MASK |
    TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
 } else {
  val &= ~(TRANS_DDI_FUNC_ENABLE | TRANS_DDI_PORT_MASK |
    TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
 }
 I915_WRITE(reg, val);

 if (dev_priv->quirks & QUIRK_INCREASE_DDI_DISABLED_TIME &&
     intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
  DRM_DEBUG_KMS("Quirk Increase DDI disabled time\n");

  msleep(100);
 }
}
