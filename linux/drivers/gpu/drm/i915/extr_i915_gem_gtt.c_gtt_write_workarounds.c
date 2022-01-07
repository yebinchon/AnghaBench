
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;
struct intel_gt {struct intel_uncore* uncore; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;


 int GAMW_ECO_ENABLE_64K_IPS_FIELD ;
 int GEN8_GAMW_ECO_DEV_RW_IA ;
 int GEN8_L3_LRA_1_GPGPU ;
 int GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_BDW ;
 int GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_CHV ;
 int GEN9_L3_LRA_1_GPGPU_DEFAULT_VALUE_BXT ;
 int GEN9_L3_LRA_1_GPGPU_DEFAULT_VALUE_SKL ;
 int GTT_CACHE_EN_ALL ;
 scalar_t__ HAS_PAGE_SIZES (struct drm_i915_private*,int ) ;
 int HSW_GTT_CACHE_EN ;
 int I915_GTT_PAGE_SIZE_2M ;
 int I915_GTT_PAGE_SIZE_64K ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 scalar_t__ IS_GEN_RANGE (struct drm_i915_private*,int,int) ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ intel_uncore_read (struct intel_uncore*,int ) ;
 int intel_uncore_rmw (struct intel_uncore*,int ,int ,int ) ;
 int intel_uncore_write (struct intel_uncore*,int ,int ) ;

__attribute__((used)) static void gtt_write_workarounds(struct intel_gt *gt)
{
 struct drm_i915_private *i915 = gt->i915;
 struct intel_uncore *uncore = gt->uncore;






 if (IS_BROADWELL(i915))
  intel_uncore_write(uncore,
       GEN8_L3_LRA_1_GPGPU,
       GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_BDW);
 else if (IS_CHERRYVIEW(i915))
  intel_uncore_write(uncore,
       GEN8_L3_LRA_1_GPGPU,
       GEN8_L3_LRA_1_GPGPU_DEFAULT_VALUE_CHV);
 else if (IS_GEN9_LP(i915))
  intel_uncore_write(uncore,
       GEN8_L3_LRA_1_GPGPU,
       GEN9_L3_LRA_1_GPGPU_DEFAULT_VALUE_BXT);
 else if (INTEL_GEN(i915) >= 9)
  intel_uncore_write(uncore,
       GEN8_L3_LRA_1_GPGPU,
       GEN9_L3_LRA_1_GPGPU_DEFAULT_VALUE_SKL);
 if (HAS_PAGE_SIZES(i915, I915_GTT_PAGE_SIZE_64K) &&
     INTEL_GEN(i915) <= 10)
  intel_uncore_rmw(uncore,
     GEN8_GAMW_ECO_DEV_RW_IA,
     0,
     GAMW_ECO_ENABLE_64K_IPS_FIELD);

 if (IS_GEN_RANGE(i915, 8, 11)) {
  bool can_use_gtt_cache = 1;







  if (HAS_PAGE_SIZES(i915, I915_GTT_PAGE_SIZE_2M))
   can_use_gtt_cache = 0;


  intel_uncore_write(uncore,
       HSW_GTT_CACHE_EN,
       can_use_gtt_cache ? GTT_CACHE_EN_ALL : 0);
  WARN_ON_ONCE(can_use_gtt_cache &&
        intel_uncore_read(uncore,
            HSW_GTT_CACHE_EN) == 0);
 }
}
