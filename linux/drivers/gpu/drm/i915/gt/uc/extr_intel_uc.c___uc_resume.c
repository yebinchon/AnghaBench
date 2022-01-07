
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int dummy; } ;
struct intel_uc {struct intel_guc guc; } ;


 int DRM_DEBUG_DRIVER (char*,int) ;
 int GEM_BUG_ON (int) ;
 int guc_communication_enabled (struct intel_guc*) ;
 int guc_enable_communication (struct intel_guc*) ;
 int intel_guc_is_running (struct intel_guc*) ;
 int intel_guc_resume (struct intel_guc*) ;

__attribute__((used)) static int __uc_resume(struct intel_uc *uc, bool enable_communication)
{
 struct intel_guc *guc = &uc->guc;
 int err;

 if (!intel_guc_is_running(guc))
  return 0;


 GEM_BUG_ON(enable_communication == guc_communication_enabled(guc));

 if (enable_communication)
  guc_enable_communication(guc);

 err = intel_guc_resume(guc);
 if (err) {
  DRM_DEBUG_DRIVER("Failed to resume GuC, err=%d", err);
  return err;
 }

 return 0;
}
