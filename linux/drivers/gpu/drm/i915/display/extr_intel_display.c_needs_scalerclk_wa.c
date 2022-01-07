
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ scaler_users; } ;
struct intel_crtc_state {TYPE_1__ scaler_state; } ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_ICELAKE (struct drm_i915_private*) ;

__attribute__((used)) static bool needs_scalerclk_wa(struct drm_i915_private *dev_priv,
          const struct intel_crtc_state *crtc_state)
{

 if (crtc_state->scaler_state.scaler_users > 0 && IS_ICELAKE(dev_priv))
  return 1;

 return 0;
}
