
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; int mask; int reg; } ;
struct intel_huc {int fw; TYPE_2__ status; int rsa_data; } ;
struct intel_guc {int dummy; } ;
struct TYPE_3__ {struct intel_guc guc; } ;
struct intel_gt {int i915; int uncore; TYPE_1__ uc; } ;


 int DRM_ERROR (char*,int) ;
 int ENOEXEC ;
 int ENXIO ;
 int GEM_BUG_ON (int ) ;
 int INTEL_UC_FIRMWARE_FAIL ;
 int INTEL_UC_FIRMWARE_RUNNING ;
 int __intel_wait_for_register (int ,int ,int ,int ,int,int,int *) ;
 struct intel_gt* huc_to_gt (struct intel_huc*) ;
 int i915_inject_load_error (int ,int ) ;
 int i915_probe_error (int ,char*,int) ;
 int intel_guc_auth_huc (struct intel_guc*,int ) ;
 int intel_guc_ggtt_offset (struct intel_guc*,int ) ;
 int intel_huc_is_authenticated (struct intel_huc*) ;
 int intel_uc_fw_change_status (int *,int ) ;
 int intel_uc_fw_is_loaded (int *) ;

int intel_huc_auth(struct intel_huc *huc)
{
 struct intel_gt *gt = huc_to_gt(huc);
 struct intel_guc *guc = &gt->uc.guc;
 int ret;

 GEM_BUG_ON(intel_huc_is_authenticated(huc));

 if (!intel_uc_fw_is_loaded(&huc->fw))
  return -ENOEXEC;

 ret = i915_inject_load_error(gt->i915, -ENXIO);
 if (ret)
  goto fail;

 ret = intel_guc_auth_huc(guc,
     intel_guc_ggtt_offset(guc, huc->rsa_data));
 if (ret) {
  DRM_ERROR("HuC: GuC did not ack Auth request %d\n", ret);
  goto fail;
 }


 ret = __intel_wait_for_register(gt->uncore,
     huc->status.reg,
     huc->status.mask,
     huc->status.value,
     2, 50, ((void*)0));
 if (ret) {
  DRM_ERROR("HuC: Firmware not verified %d\n", ret);
  goto fail;
 }

 intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_RUNNING);
 return 0;

fail:
 i915_probe_error(gt->i915, "HuC: Authentication failed %d\n", ret);
 intel_uc_fw_change_status(&huc->fw, INTEL_UC_FIRMWARE_FAIL);
 return ret;
}
