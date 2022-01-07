
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int CNL_HWS_CSB_WRITE_INDEX ;
 int I915_HWS_CSB_WRITE_INDEX ;
 int INTEL_GEN (struct drm_i915_private*) ;

__attribute__((used)) static inline int intel_hws_csb_write_index(struct drm_i915_private *i915)
{
 if (INTEL_GEN(i915) >= 10)
  return CNL_HWS_CSB_WRITE_INDEX;
 else
  return I915_HWS_CSB_WRITE_INDEX;
}
