
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {int cpu_transcoder; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
struct TYPE_3__ {int dev; } ;


 int I915_WRITE (int ,int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int TGL_TRANS_CLK_SEL_DISABLED ;
 int TRANSCODER_EDP ;
 int TRANS_CLK_SEL (int) ;
 int TRANS_CLK_SEL_DISABLED ;
 struct drm_i915_private* to_i915 (int ) ;

void intel_ddi_disable_pipe_clock(const struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(crtc_state->base.crtc->dev);
 enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;

 if (cpu_transcoder != TRANSCODER_EDP) {
  if (INTEL_GEN(dev_priv) >= 12)
   I915_WRITE(TRANS_CLK_SEL(cpu_transcoder),
       TGL_TRANS_CLK_SEL_DISABLED);
  else
   I915_WRITE(TRANS_CLK_SEL(cpu_transcoder),
       TRANS_CLK_SEL_DISABLED);
 }
}
