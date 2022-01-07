
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct intel_uncore {int dummy; } ;
struct intel_guc {int dummy; } ;
struct TYPE_2__ {struct intel_uncore* uncore; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int DRM_ERROR (char*,scalar_t__,scalar_t__) ;
 int EIO ;
 scalar_t__ GUC_POWER_D1 ;
 scalar_t__ INTEL_GUC_ACTION_ENTER_S_STATE ;
 int INTEL_GUC_SLEEP_STATE_INVALID_MASK ;
 scalar_t__ INTEL_GUC_SLEEP_STATE_SUCCESS ;
 int SOFT_SCRATCH (int) ;
 int __intel_wait_for_register (struct intel_uncore*,int ,int ,int ,int ,int,scalar_t__*) ;
 TYPE_1__* guc_to_gt (struct intel_guc*) ;
 int intel_guc_send (struct intel_guc*,scalar_t__*,int ) ;
 int intel_uncore_write (struct intel_uncore*,int ,int ) ;

int intel_guc_suspend(struct intel_guc *guc)
{
 struct intel_uncore *uncore = guc_to_gt(guc)->uncore;
 int ret;
 u32 status;
 u32 action[] = {
  INTEL_GUC_ACTION_ENTER_S_STATE,
  GUC_POWER_D1,
 };
 intel_uncore_write(uncore, SOFT_SCRATCH(14),
      INTEL_GUC_SLEEP_STATE_INVALID_MASK);

 ret = intel_guc_send(guc, action, ARRAY_SIZE(action));
 if (ret)
  return ret;

 ret = __intel_wait_for_register(uncore, SOFT_SCRATCH(14),
     INTEL_GUC_SLEEP_STATE_INVALID_MASK,
     0, 0, 10, &status);
 if (ret)
  return ret;

 if (status != INTEL_GUC_SLEEP_STATE_SUCCESS) {
  DRM_ERROR("GuC failed to change sleep state. "
     "action=0x%x, err=%u\n",
     action[0], status);
  return -EIO;
 }

 return 0;
}
