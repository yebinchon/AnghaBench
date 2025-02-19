
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_uncore {int dummy; } ;
struct TYPE_3__ {int count; int fw_domains; } ;
struct intel_guc {int send_mutex; TYPE_1__ send_regs; } ;
struct TYPE_4__ {struct intel_uncore* uncore; } ;


 int DRM_ERROR (char*,int const,int,int) ;
 int EIO ;
 int GEM_BUG_ON (int const) ;
 int const INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_BUFFER ;
 int const INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER ;
 int const INTEL_GUC_MSG_CODE_MASK ;
 int INTEL_GUC_MSG_IS_RESPONSE_SUCCESS (int) ;
 int INTEL_GUC_MSG_TO_DATA (int) ;
 int INTEL_GUC_MSG_TYPE_MASK ;
 int INTEL_GUC_MSG_TYPE_RESPONSE ;
 int INTEL_GUC_MSG_TYPE_SHIFT ;
 int __intel_wait_for_register_fw (struct intel_uncore*,int ,int ,int,int,int,int*) ;
 int guc_send_reg (struct intel_guc*,int) ;
 TYPE_2__* guc_to_gt (struct intel_guc*) ;
 int intel_guc_notify (struct intel_guc*) ;
 int intel_uncore_forcewake_get (struct intel_uncore*,int ) ;
 int intel_uncore_forcewake_put (struct intel_uncore*,int ) ;
 int intel_uncore_posting_read (struct intel_uncore*,int ) ;
 int intel_uncore_read (struct intel_uncore*,int ) ;
 int intel_uncore_write (struct intel_uncore*,int ,int const) ;
 int min (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int intel_guc_send_mmio(struct intel_guc *guc, const u32 *action, u32 len,
   u32 *response_buf, u32 response_buf_size)
{
 struct intel_uncore *uncore = guc_to_gt(guc)->uncore;
 u32 status;
 int i;
 int ret;

 GEM_BUG_ON(!len);
 GEM_BUG_ON(len > guc->send_regs.count);


 GEM_BUG_ON(*action & ~INTEL_GUC_MSG_CODE_MASK);


 GEM_BUG_ON(*action != INTEL_GUC_ACTION_REGISTER_COMMAND_TRANSPORT_BUFFER &&
     *action != INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_BUFFER);

 mutex_lock(&guc->send_mutex);
 intel_uncore_forcewake_get(uncore, guc->send_regs.fw_domains);

 for (i = 0; i < len; i++)
  intel_uncore_write(uncore, guc_send_reg(guc, i), action[i]);

 intel_uncore_posting_read(uncore, guc_send_reg(guc, i - 1));

 intel_guc_notify(guc);





 ret = __intel_wait_for_register_fw(uncore,
        guc_send_reg(guc, 0),
        INTEL_GUC_MSG_TYPE_MASK,
        INTEL_GUC_MSG_TYPE_RESPONSE <<
        INTEL_GUC_MSG_TYPE_SHIFT,
        10, 10, &status);

 if (!ret && !INTEL_GUC_MSG_IS_RESPONSE_SUCCESS(status))
  ret = -EIO;

 if (ret) {
  DRM_ERROR("MMIO: GuC action %#x failed with error %d %#x\n",
     action[0], ret, status);
  goto out;
 }

 if (response_buf) {
  int count = min(response_buf_size, guc->send_regs.count - 1);

  for (i = 0; i < count; i++)
   response_buf[i] = intel_uncore_read(uncore,
           guc_send_reg(guc, i + 1));
 }


 ret = INTEL_GUC_MSG_TO_DATA(status);

out:
 intel_uncore_forcewake_put(uncore, guc->send_regs.fw_domains);
 mutex_unlock(&guc->send_mutex);

 return ret;
}
