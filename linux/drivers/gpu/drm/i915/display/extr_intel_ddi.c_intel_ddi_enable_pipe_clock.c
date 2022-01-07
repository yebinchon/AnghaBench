
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_encoder {int port; } ;
struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {int cpu_transcoder; TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum port { ____Placeholder_port } port ;


 int I915_WRITE (int ,int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int TGL_TRANS_CLK_SEL_PORT (int) ;
 int TRANSCODER_EDP ;
 int TRANS_CLK_SEL (int) ;
 int TRANS_CLK_SEL_PORT (int) ;
 struct intel_encoder* intel_ddi_get_crtc_encoder (struct intel_crtc*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

void intel_ddi_enable_pipe_clock(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 struct intel_encoder *encoder = intel_ddi_get_crtc_encoder(crtc);
 enum port port = encoder->port;
 enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;

 if (cpu_transcoder != TRANSCODER_EDP) {
  if (INTEL_GEN(dev_priv) >= 12)
   I915_WRITE(TRANS_CLK_SEL(cpu_transcoder),
       TGL_TRANS_CLK_SEL_PORT(port));
  else
   I915_WRITE(TRANS_CLK_SEL(cpu_transcoder),
       TRANS_CLK_SEL_PORT(port));
 }
}
