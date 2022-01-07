
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;
struct intel_guc {int fw; } ;
struct intel_gt {struct intel_uncore* uncore; } ;


 int INTEL_UC_FIRMWARE_FAIL ;
 int INTEL_UC_FIRMWARE_RUNNING ;
 int UOS_MOVE ;
 int guc_prepare_xfer (struct intel_uncore*) ;
 struct intel_gt* guc_to_gt (struct intel_guc*) ;
 int guc_wait_ucode (struct intel_uncore*) ;
 int guc_xfer_rsa (int *,struct intel_uncore*) ;
 int intel_uc_fw_change_status (int *,int ) ;
 int intel_uc_fw_upload (int *,struct intel_gt*,int,int ) ;

int intel_guc_fw_upload(struct intel_guc *guc)
{
 struct intel_gt *gt = guc_to_gt(guc);
 struct intel_uncore *uncore = gt->uncore;
 int ret;

 guc_prepare_xfer(uncore);






 guc_xfer_rsa(&guc->fw, uncore);





 ret = intel_uc_fw_upload(&guc->fw, gt, 0x2000, UOS_MOVE);
 if (ret)
  goto out;

 ret = guc_wait_ucode(uncore);
 if (ret)
  goto out;

 intel_uc_fw_change_status(&guc->fw, INTEL_UC_FIRMWARE_RUNNING);
 return 0;

out:
 intel_uc_fw_change_status(&guc->fw, INTEL_UC_FIRMWARE_FAIL);
 return ret;
}
