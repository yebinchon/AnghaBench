
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private*) ;

__attribute__((used)) static bool mcr_range(struct drm_i915_private *i915, u32 offset)
{





 if (INTEL_GEN(i915) >= 8 && (offset >= 0xb100 && offset <= 0xb3ff))
  return 1;

 return 0;
}
