
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int dummy; } ;
struct intel_uc {struct intel_guc guc; } ;


 int __uc_sanitize (struct intel_uc*) ;
 int guc_stop_communication (struct intel_guc*) ;
 int intel_guc_is_running (struct intel_guc*) ;

void intel_uc_reset_prepare(struct intel_uc *uc)
{
 struct intel_guc *guc = &uc->guc;

 if (!intel_guc_is_running(guc))
  return;

 guc_stop_communication(guc);
 __uc_sanitize(uc);
}
