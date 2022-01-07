
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 scalar_t__ HAS_PCH_CPT (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_IBX (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_LPT (struct drm_i915_private*) ;
 int ironlake_init_pch_refclk (struct drm_i915_private*) ;
 int lpt_init_pch_refclk (struct drm_i915_private*) ;

void intel_init_pch_refclk(struct drm_i915_private *dev_priv)
{
 if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv))
  ironlake_init_pch_refclk(dev_priv);
 else if (HAS_PCH_LPT(dev_priv))
  lpt_init_pch_refclk(dev_priv);
}
