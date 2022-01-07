
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uc_fw {int path; int type; } ;
struct intel_gt {int i915; } ;


 int ENOEXEC ;
 int GEM_BUG_ON (int ) ;
 int INTEL_UC_FIRMWARE_FAIL ;
 int INTEL_UC_FIRMWARE_TRANSFERRED ;
 int i915_inject_load_error (int ,int) ;
 int i915_probe_error (int ,char*,int ,int ,int) ;
 int intel_uc_fw_change_status (struct intel_uc_fw*,int ) ;
 int intel_uc_fw_ggtt_bind (struct intel_uc_fw*,struct intel_gt*) ;
 int intel_uc_fw_ggtt_unbind (struct intel_uc_fw*,struct intel_gt*) ;
 int intel_uc_fw_is_available (struct intel_uc_fw*) ;
 int intel_uc_fw_is_loaded (struct intel_uc_fw*) ;
 int intel_uc_fw_type_repr (int ) ;
 int uc_fw_xfer (struct intel_uc_fw*,struct intel_gt*,int ,int ) ;

int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, struct intel_gt *gt,
         u32 wopcm_offset, u32 dma_flags)
{
 int err;


 GEM_BUG_ON(intel_uc_fw_is_loaded(uc_fw));

 err = i915_inject_load_error(gt->i915, -ENOEXEC);
 if (err)
  return err;

 if (!intel_uc_fw_is_available(uc_fw))
  return -ENOEXEC;


 intel_uc_fw_ggtt_bind(uc_fw, gt);
 err = uc_fw_xfer(uc_fw, gt, wopcm_offset, dma_flags);
 intel_uc_fw_ggtt_unbind(uc_fw, gt);
 if (err)
  goto fail;

 intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_TRANSFERRED);
 return 0;

fail:
 i915_probe_error(gt->i915, "Failed to load %s firmware %s (%d)\n",
    intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
    err);
 intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_FAIL);
 return err;
}
