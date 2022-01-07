
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;


 int GEN6_PMIIR ;
 int GEN8_GT_IIR (int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int WARN_ON_ONCE (int) ;

__attribute__((used)) static i915_reg_t gen6_pm_iir(struct drm_i915_private *dev_priv)
{
 WARN_ON_ONCE(INTEL_GEN(dev_priv) >= 11);

 return INTEL_GEN(dev_priv) >= 8 ? GEN8_GT_IIR(2) : GEN6_PMIIR;
}
