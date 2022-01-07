
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int minor_ver_found; int major_ver_found; int path; } ;
struct intel_huc {TYPE_1__ fw; } ;
struct TYPE_9__ {int minor_ver_found; int major_ver_found; int path; int status; } ;
struct intel_guc {TYPE_4__ fw; } ;
struct intel_uc {struct intel_huc huc; struct intel_guc guc; } ;
struct TYPE_7__ {int dev; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct TYPE_8__ {struct drm_i915_private* i915; } ;


 int DRM_DEBUG_DRIVER (char*,int,int) ;
 int EIO ;
 int INTEL_UC_FW_TYPE_GUC ;
 int INTEL_UC_FW_TYPE_HUC ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int __uc_capture_load_err_log (struct intel_uc*) ;
 int __uc_sanitize (struct intel_uc*) ;
 int dev_info (int ,char*,int ,int ,int ,int ,char*,int ) ;
 int dev_notice (int ,char*) ;
 int enableddisabled (scalar_t__) ;
 int guc_disable_communication (struct intel_guc*) ;
 int guc_enable_communication (struct intel_guc*) ;
 int guc_reset_interrupts (struct intel_guc*) ;
 int i915_probe_error (struct drm_i915_private*,char*,int) ;
 int intel_guc_ads_reset (struct intel_guc*) ;
 int intel_guc_fw_upload (struct intel_guc*) ;
 int intel_guc_sample_forcewake (struct intel_guc*) ;
 int intel_guc_submission_enable (struct intel_guc*) ;
 int intel_guc_write_params (struct intel_guc*) ;
 int intel_huc_auth (struct intel_huc*) ;
 int intel_huc_fw_upload (struct intel_huc*) ;
 int intel_huc_is_authenticated (struct intel_huc*) ;
 int intel_uc_fw_is_available (TYPE_4__*) ;
 scalar_t__ intel_uc_fw_is_overridden (TYPE_4__*) ;
 int intel_uc_fw_status_to_error (int ) ;
 int intel_uc_fw_type_repr (int ) ;
 int intel_uc_supports_guc (struct intel_uc*) ;
 scalar_t__ intel_uc_supports_guc_submission (struct intel_uc*) ;
 int intel_uc_uses_guc (struct intel_uc*) ;
 scalar_t__ intel_uc_uses_huc (struct intel_uc*) ;
 int uc_init_wopcm (struct intel_uc*) ;
 scalar_t__ uc_is_wopcm_locked (struct intel_uc*) ;
 TYPE_3__* uc_to_gt (struct intel_uc*) ;
 int yesno (int ) ;

int intel_uc_init_hw(struct intel_uc *uc)
{
 struct drm_i915_private *i915 = uc_to_gt(uc)->i915;
 struct intel_guc *guc = &uc->guc;
 struct intel_huc *huc = &uc->huc;
 int ret, attempts;

 if (!intel_uc_supports_guc(uc))
  return 0;






 if (!intel_uc_uses_guc(uc) && !uc_is_wopcm_locked(uc))
  return 0;

 if (!intel_uc_fw_is_available(&guc->fw)) {
  ret = uc_is_wopcm_locked(uc) ||
        intel_uc_fw_is_overridden(&guc->fw) ||
        intel_uc_supports_guc_submission(uc) ?
        intel_uc_fw_status_to_error(guc->fw.status) : 0;
  goto err_out;
 }

 ret = uc_init_wopcm(uc);
 if (ret)
  goto err_out;

 guc_reset_interrupts(guc);



 if (IS_GEN(i915, 9))
  attempts = 3;
 else
  attempts = 1;

 while (attempts--) {




  ret = __uc_sanitize(uc);
  if (ret)
   goto err_out;

  intel_huc_fw_upload(huc);
  intel_guc_ads_reset(guc);
  intel_guc_write_params(guc);
  ret = intel_guc_fw_upload(guc);
  if (ret == 0)
   break;

  DRM_DEBUG_DRIVER("GuC fw load failed: %d; will reset and "
     "retry %d more time(s)\n", ret, attempts);
 }


 if (ret)
  goto err_log_capture;

 ret = guc_enable_communication(guc);
 if (ret)
  goto err_log_capture;

 intel_huc_auth(huc);

 ret = intel_guc_sample_forcewake(guc);
 if (ret)
  goto err_communication;

 if (intel_uc_supports_guc_submission(uc)) {
  ret = intel_guc_submission_enable(guc);
  if (ret)
   goto err_communication;
 }

 dev_info(i915->drm.dev, "%s firmware %s version %u.%u %s:%s\n",
   intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_GUC), guc->fw.path,
   guc->fw.major_ver_found, guc->fw.minor_ver_found,
   "submission",
   enableddisabled(intel_uc_supports_guc_submission(uc)));

 if (intel_uc_uses_huc(uc)) {
  dev_info(i915->drm.dev, "%s firmware %s version %u.%u %s:%s\n",
    intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_HUC),
    huc->fw.path,
    huc->fw.major_ver_found, huc->fw.minor_ver_found,
    "authenticated",
    yesno(intel_huc_is_authenticated(huc)));
 }

 return 0;




err_communication:
 guc_disable_communication(guc);
err_log_capture:
 __uc_capture_load_err_log(uc);
err_out:
 __uc_sanitize(uc);

 if (!ret) {
  dev_notice(i915->drm.dev, "GuC is uninitialized\n");

  return 0;
 }

 i915_probe_error(i915, "GuC initialization failed %d\n", ret);


 return -EIO;
}
