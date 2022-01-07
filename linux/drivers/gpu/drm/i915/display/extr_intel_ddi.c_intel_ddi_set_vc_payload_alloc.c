
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
struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int TRANS_DDI_DP_VC_PAYLOAD_ALLOC ;
 int TRANS_DDI_FUNC_CTL (int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

void intel_ddi_set_vc_payload_alloc(const struct intel_crtc_state *crtc_state,
        bool state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 u32 temp;

 temp = I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder));
 if (state == 1)
  temp |= TRANS_DDI_DP_VC_PAYLOAD_ALLOC;
 else
  temp &= ~TRANS_DDI_DP_VC_PAYLOAD_ALLOC;
 I915_WRITE(TRANS_DDI_FUNC_CTL(cpu_transcoder), temp);
}
