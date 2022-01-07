
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_guc {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int INTEL_GUC_ACTION_ALLOCATE_DOORBELL ;
 int intel_guc_send (struct intel_guc*,int *,int ) ;

__attribute__((used)) static int __guc_allocate_doorbell(struct intel_guc *guc, u32 stage_id)
{
 u32 action[] = {
  INTEL_GUC_ACTION_ALLOCATE_DOORBELL,
  stage_id
 };

 return intel_guc_send(guc, action, ARRAY_SIZE(action));
}
