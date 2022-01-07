
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_crtc* crtc; } ;
struct intel_crtc_state {int cpu_transcoder; TYPE_1__ base; } ;
struct intel_crtc {int dummy; } ;
struct intel_atomic_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_crtc {int dev; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;


 int INTEL_GEN (struct drm_i915_private*) ;
 int INTEL_OUTPUT_DP_MST ;
 int assert_vblank_disabled (struct drm_crtc*) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state*,int ) ;
 int intel_ddi_disable_transcoder_func (struct intel_crtc_state*) ;
 int intel_ddi_set_vc_payload_alloc (struct intel_crtc_state*,int) ;
 int intel_disable_pipe (struct intel_crtc_state*) ;
 int intel_dsc_disable (struct intel_crtc_state*) ;
 int intel_encoders_disable (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ;
 int intel_encoders_post_disable (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ;
 int intel_encoders_post_pll_disable (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ;
 int ironlake_pfit_disable (struct intel_crtc_state*) ;
 int skylake_scaler_disable (struct intel_crtc*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;
 int transcoder_is_dsi (int) ;

__attribute__((used)) static void haswell_crtc_disable(struct intel_crtc_state *old_crtc_state,
     struct intel_atomic_state *state)
{
 struct drm_crtc *crtc = old_crtc_state->base.crtc;
 struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;

 intel_encoders_disable(intel_crtc, old_crtc_state, state);

 drm_crtc_vblank_off(crtc);
 assert_vblank_disabled(crtc);


 if (!transcoder_is_dsi(cpu_transcoder))
  intel_disable_pipe(old_crtc_state);

 if (intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
  intel_ddi_set_vc_payload_alloc(old_crtc_state, 0);

 if (!transcoder_is_dsi(cpu_transcoder))
  intel_ddi_disable_transcoder_func(old_crtc_state);

 intel_dsc_disable(old_crtc_state);

 if (INTEL_GEN(dev_priv) >= 9)
  skylake_scaler_disable(intel_crtc);
 else
  ironlake_pfit_disable(old_crtc_state);

 intel_encoders_post_disable(intel_crtc, old_crtc_state, state);

 intel_encoders_post_pll_disable(intel_crtc, old_crtc_state, state);
}
