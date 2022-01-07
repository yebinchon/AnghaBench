
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct intel_gt {int pm_ier; struct intel_uncore* uncore; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;


 int GEN11_GPM_WGBOXPERF_INTR_ENABLE ;
 int GEN6_PMIER ;
 int GEN8_GT_IER (int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int intel_uncore_write (struct intel_uncore*,int ,int) ;

__attribute__((used)) static void write_pm_ier(struct intel_gt *gt)
{
 struct drm_i915_private *i915 = gt->i915;
 struct intel_uncore *uncore = gt->uncore;
 u32 mask = gt->pm_ier;
 i915_reg_t reg;

 if (INTEL_GEN(i915) >= 11) {
  reg = GEN11_GPM_WGBOXPERF_INTR_ENABLE;
  mask <<= 16;
 } else if (INTEL_GEN(i915) >= 8) {
  reg = GEN8_GT_IER(2);
 } else {
  reg = GEN6_PMIER;
 }

 intel_uncore_write(uncore, reg, mask);
}
