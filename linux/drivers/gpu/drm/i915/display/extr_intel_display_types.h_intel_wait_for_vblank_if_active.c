
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {scalar_t__ active; } ;
struct drm_i915_private {int dummy; } ;


 struct intel_crtc* intel_get_crtc_for_pipe (struct drm_i915_private*,int) ;
 int intel_wait_for_vblank (struct drm_i915_private*,int) ;

__attribute__((used)) static inline void
intel_wait_for_vblank_if_active(struct drm_i915_private *dev_priv, int pipe)
{
 const struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);

 if (crtc->active)
  intel_wait_for_vblank(dev_priv, pipe);
}
