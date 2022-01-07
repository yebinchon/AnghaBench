
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_encoder {int dummy; } ;
struct TYPE_4__ {int state; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct TYPE_3__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct intel_atomic_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int EINVAL ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int INTEL_OUTPUT_DSI ;
 int intel_crtc_has_type (struct intel_crtc_state*,int ) ;
 struct intel_encoder* intel_get_crtc_new_encoder (struct intel_atomic_state*,struct intel_crtc_state*) ;
 int intel_reserve_shared_dplls (struct intel_atomic_state*,struct intel_crtc*,struct intel_encoder*) ;
 int pipe_name (int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_atomic_state* to_intel_atomic_state (int ) ;

__attribute__((used)) static int haswell_crtc_compute_clock(struct intel_crtc *crtc,
          struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 struct intel_atomic_state *state =
  to_intel_atomic_state(crtc_state->base.state);

 if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) ||
     INTEL_GEN(dev_priv) >= 11) {
  struct intel_encoder *encoder =
   intel_get_crtc_new_encoder(state, crtc_state);

  if (!intel_reserve_shared_dplls(state, crtc, encoder)) {
   DRM_DEBUG_KMS("failed to find PLL for pipe %c\n",
          pipe_name(crtc->pipe));
   return -EINVAL;
  }
 }

 return 0;
}
