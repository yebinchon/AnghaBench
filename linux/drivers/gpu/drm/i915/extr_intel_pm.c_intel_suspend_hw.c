
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 scalar_t__ HAS_PCH_LPT (struct drm_i915_private*) ;
 int lpt_suspend_hw (struct drm_i915_private*) ;

void intel_suspend_hw(struct drm_i915_private *dev_priv)
{
 if (HAS_PCH_LPT(dev_priv))
  lpt_suspend_hw(dev_priv);
}
