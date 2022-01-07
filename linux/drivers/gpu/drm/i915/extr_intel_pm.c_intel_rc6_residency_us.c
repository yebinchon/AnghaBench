
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;


 int DIV_ROUND_UP_ULL (int ,int) ;
 int intel_rc6_residency_ns (struct drm_i915_private*,int ) ;

u64 intel_rc6_residency_us(struct drm_i915_private *dev_priv,
      i915_reg_t reg)
{
 return DIV_ROUND_UP_ULL(intel_rc6_residency_ns(dev_priv, reg), 1000);
}
