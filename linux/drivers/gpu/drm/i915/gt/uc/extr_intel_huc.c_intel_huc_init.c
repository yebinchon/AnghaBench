
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_huc {int fw; } ;
struct TYPE_3__ {int dev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct TYPE_4__ {struct drm_i915_private* i915; } ;


 int DRM_DEV_DEBUG_DRIVER (int ,char*,int) ;
 TYPE_2__* huc_to_gt (struct intel_huc*) ;
 int intel_huc_rsa_data_create (struct intel_huc*) ;
 int intel_uc_fw_cleanup_fetch (int *) ;
 int intel_uc_fw_fini (int *) ;
 int intel_uc_fw_init (int *) ;

int intel_huc_init(struct intel_huc *huc)
{
 struct drm_i915_private *i915 = huc_to_gt(huc)->i915;
 int err;

 err = intel_uc_fw_init(&huc->fw);
 if (err)
  goto out;






 err = intel_huc_rsa_data_create(huc);
 if (err)
  goto out_fini;

 return 0;

out_fini:
 intel_uc_fw_fini(&huc->fw);
out:
 intel_uc_fw_cleanup_fetch(&huc->fw);
 DRM_DEV_DEBUG_DRIVER(i915->drm.dev, "failed with %d\n", err);
 return err;
}
