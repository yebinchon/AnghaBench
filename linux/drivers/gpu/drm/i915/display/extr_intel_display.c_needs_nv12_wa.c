
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {int nv12_planes; } ;
struct drm_i915_private {int dummy; } ;


 int IS_GEMINILAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;

__attribute__((used)) static bool needs_nv12_wa(struct drm_i915_private *dev_priv,
     const struct intel_crtc_state *crtc_state)
{
 if (!crtc_state->nv12_planes)
  return 0;


 if (IS_GEN(dev_priv, 9) && !IS_GEMINILAKE(dev_priv))
  return 1;

 return 0;
}
