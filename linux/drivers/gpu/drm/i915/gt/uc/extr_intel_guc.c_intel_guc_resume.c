
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_guc {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int GUC_POWER_D0 ;
 int INTEL_GUC_ACTION_EXIT_S_STATE ;
 int intel_guc_send (struct intel_guc*,int *,int ) ;

int intel_guc_resume(struct intel_guc *guc)
{
 u32 action[] = {
  INTEL_GUC_ACTION_EXIT_S_STATE,
  GUC_POWER_D0,
 };

 return intel_guc_send(guc, action, ARRAY_SIZE(action));
}
