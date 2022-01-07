
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int dummy; } ;
struct intel_uc {struct intel_guc guc; } ;


 int DRM_DEBUG_DRIVER (char*,int) ;
 int guc_disable_communication (struct intel_guc*) ;
 int intel_guc_is_running (struct intel_guc*) ;
 int intel_guc_suspend (struct intel_guc*) ;

void intel_uc_runtime_suspend(struct intel_uc *uc)
{
 struct intel_guc *guc = &uc->guc;
 int err;

 if (!intel_guc_is_running(guc))
  return;

 err = intel_guc_suspend(guc);
 if (err)
  DRM_DEBUG_DRIVER("Failed to suspend GuC, err=%d", err);

 guc_disable_communication(guc);
}
