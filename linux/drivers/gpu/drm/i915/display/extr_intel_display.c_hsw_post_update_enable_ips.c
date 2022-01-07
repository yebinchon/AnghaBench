
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int private_flags; } ;
struct TYPE_5__ {TYPE_1__ adjusted_mode; scalar_t__ color_mgmt_changed; int crtc; } ;
struct intel_crtc_state {scalar_t__ gamma_mode; int ips_enabled; TYPE_2__ base; scalar_t__ update_pipe; } ;
struct TYPE_6__ {int dev; } ;
struct intel_crtc {TYPE_3__ base; } ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ GAMMA_MODE_MODE_SPLIT ;
 int I915_MODE_FLAG_INHERITED ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 scalar_t__ needs_modeset (struct intel_crtc_state const*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static bool hsw_post_update_enable_ips(const struct intel_crtc_state *old_crtc_state,
           const struct intel_crtc_state *new_crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);

 if (!new_crtc_state->ips_enabled)
  return 0;

 if (needs_modeset(new_crtc_state))
  return 1;







 if (IS_HASWELL(dev_priv) &&
     (new_crtc_state->base.color_mgmt_changed ||
      new_crtc_state->update_pipe) &&
     new_crtc_state->gamma_mode == GAMMA_MODE_MODE_SPLIT)
  return 1;





 if (new_crtc_state->update_pipe &&
     old_crtc_state->base.adjusted_mode.private_flags & I915_MODE_FLAG_INHERITED)
  return 1;

 return !old_crtc_state->ips_enabled;
}
