
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_guc {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int INTEL_GUC_ACTION_FORCE_LOG_BUFFER_FLUSH ;
 int intel_guc_send (struct intel_guc*,int *,int ) ;

__attribute__((used)) static int guc_action_flush_log(struct intel_guc *guc)
{
 u32 action[] = {
  INTEL_GUC_ACTION_FORCE_LOG_BUFFER_FLUSH,
  0
 };

 return intel_guc_send(guc, action, ARRAY_SIZE(action));
}
