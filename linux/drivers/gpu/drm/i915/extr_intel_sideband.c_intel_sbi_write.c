
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct drm_i915_private {int dummy; } ;
typedef enum intel_sbi_destination { ____Placeholder_intel_sbi_destination } intel_sbi_destination ;


 int intel_sbi_rw (struct drm_i915_private*,int ,int,int *,int) ;

void intel_sbi_write(struct drm_i915_private *i915, u16 reg, u32 value,
       enum intel_sbi_destination destination)
{
 intel_sbi_rw(i915, reg, destination, &value, 0);
}
