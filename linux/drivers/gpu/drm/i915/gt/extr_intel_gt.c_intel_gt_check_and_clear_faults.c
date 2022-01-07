
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt {struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;


 int ALL_ENGINES ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int gen6_check_faults (struct intel_gt*) ;
 int gen8_check_faults (struct intel_gt*) ;
 int intel_gt_clear_error_registers (struct intel_gt*,int ) ;

void intel_gt_check_and_clear_faults(struct intel_gt *gt)
{
 struct drm_i915_private *i915 = gt->i915;


 if (INTEL_GEN(i915) >= 8)
  gen8_check_faults(gt);
 else if (INTEL_GEN(i915) >= 6)
  gen6_check_faults(gt);
 else
  return;

 intel_gt_clear_error_registers(gt, ALL_ENGINES);
}
