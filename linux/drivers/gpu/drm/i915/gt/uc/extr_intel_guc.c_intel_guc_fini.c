
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int fw; int log; int ct; } ;
struct intel_gt {int ggtt; } ;


 int guc_shared_data_destroy (struct intel_guc*) ;
 struct intel_gt* guc_to_gt (struct intel_guc*) ;
 int i915_ggtt_disable_guc (int ) ;
 int intel_guc_ads_destroy (struct intel_guc*) ;
 int intel_guc_ct_fini (int *) ;
 scalar_t__ intel_guc_is_submission_supported (struct intel_guc*) ;
 int intel_guc_log_destroy (int *) ;
 int intel_guc_submission_fini (struct intel_guc*) ;
 int intel_uc_fw_cleanup_fetch (int *) ;
 int intel_uc_fw_fini (int *) ;
 int intel_uc_fw_is_available (int *) ;

void intel_guc_fini(struct intel_guc *guc)
{
 struct intel_gt *gt = guc_to_gt(guc);

 if (!intel_uc_fw_is_available(&guc->fw))
  return;

 i915_ggtt_disable_guc(gt->ggtt);

 if (intel_guc_is_submission_supported(guc))
  intel_guc_submission_fini(guc);

 intel_guc_ct_fini(&guc->ct);

 intel_guc_ads_destroy(guc);
 intel_guc_log_destroy(&guc->log);
 guc_shared_data_destroy(guc);
 intel_uc_fw_fini(&guc->fw);
 intel_uc_fw_cleanup_fetch(&guc->fw);
}
