
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uc {int dummy; } ;
struct intel_gt {int uncore; int i915; } ;


 int DRM_ERROR (char*,int) ;
 int ENXIO ;
 int GS_MIA_IN_RESET ;
 int GUC_STATUS ;
 int WARN (int,char*,int) ;
 int i915_inject_load_error (int ,int ) ;
 int intel_reset_guc (struct intel_gt*) ;
 int intel_uncore_read (int ,int ) ;
 struct intel_gt* uc_to_gt (struct intel_uc*) ;

__attribute__((used)) static int __intel_uc_reset_hw(struct intel_uc *uc)
{
 struct intel_gt *gt = uc_to_gt(uc);
 int ret;
 u32 guc_status;

 ret = i915_inject_load_error(gt->i915, -ENXIO);
 if (ret)
  return ret;

 ret = intel_reset_guc(gt);
 if (ret) {
  DRM_ERROR("Failed to reset GuC, ret = %d\n", ret);
  return ret;
 }

 guc_status = intel_uncore_read(gt->uncore, GUC_STATUS);
 WARN(!(guc_status & GS_MIA_IN_RESET),
      "GuC status: 0x%x, MIA core expected to be in reset\n",
      guc_status);

 return ret;
}
