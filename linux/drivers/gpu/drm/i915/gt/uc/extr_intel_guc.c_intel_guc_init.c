
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_guc {int fw; int log; int ct; int ads_vma; int shared_data; } ;
struct intel_gt {TYPE_2__* i915; int ggtt; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ drm; } ;


 int DRM_DEV_DEBUG_DRIVER (int ,char*,int) ;
 int GEM_BUG_ON (int) ;
 int guc_init_params (struct intel_guc*) ;
 int guc_shared_data_create (struct intel_guc*) ;
 int guc_shared_data_destroy (struct intel_guc*) ;
 struct intel_gt* guc_to_gt (struct intel_guc*) ;
 int i915_ggtt_enable_guc (int ) ;
 int intel_guc_ads_create (struct intel_guc*) ;
 int intel_guc_ads_destroy (struct intel_guc*) ;
 int intel_guc_ct_fini (int *) ;
 int intel_guc_ct_init (int *) ;
 scalar_t__ intel_guc_is_submission_supported (struct intel_guc*) ;
 int intel_guc_log_create (int *) ;
 int intel_guc_log_destroy (int *) ;
 int intel_guc_submission_init (struct intel_guc*) ;
 int intel_uc_fw_cleanup_fetch (int *) ;
 int intel_uc_fw_fini (int *) ;
 int intel_uc_fw_init (int *) ;

int intel_guc_init(struct intel_guc *guc)
{
 struct intel_gt *gt = guc_to_gt(guc);
 int ret;

 ret = intel_uc_fw_init(&guc->fw);
 if (ret)
  goto err_fetch;

 ret = guc_shared_data_create(guc);
 if (ret)
  goto err_fw;
 GEM_BUG_ON(!guc->shared_data);

 ret = intel_guc_log_create(&guc->log);
 if (ret)
  goto err_shared;

 ret = intel_guc_ads_create(guc);
 if (ret)
  goto err_log;
 GEM_BUG_ON(!guc->ads_vma);

 ret = intel_guc_ct_init(&guc->ct);
 if (ret)
  goto err_ads;

 if (intel_guc_is_submission_supported(guc)) {




  ret = intel_guc_submission_init(guc);
  if (ret)
   goto err_ct;
 }


 guc_init_params(guc);


 i915_ggtt_enable_guc(gt->ggtt);

 return 0;

err_ct:
 intel_guc_ct_fini(&guc->ct);
err_ads:
 intel_guc_ads_destroy(guc);
err_log:
 intel_guc_log_destroy(&guc->log);
err_shared:
 guc_shared_data_destroy(guc);
err_fw:
 intel_uc_fw_fini(&guc->fw);
err_fetch:
 intel_uc_fw_cleanup_fetch(&guc->fw);
 DRM_DEV_DEBUG_DRIVER(gt->i915->drm.dev, "failed with %d\n", ret);
 return ret;
}
