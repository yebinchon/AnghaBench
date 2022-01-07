
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_cdclk_state {scalar_t__ cdclk; scalar_t__ vco; scalar_t__ ref; } ;
struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 int IS_GEN9_LP (struct drm_i915_private*) ;

bool intel_cdclk_needs_cd2x_update(struct drm_i915_private *dev_priv,
       const struct intel_cdclk_state *a,
       const struct intel_cdclk_state *b)
{

 if (INTEL_GEN(dev_priv) < 10 && !IS_GEN9_LP(dev_priv))
  return 0;

 return a->cdclk != b->cdclk &&
  a->vco == b->vco &&
  a->ref == b->ref;
}
