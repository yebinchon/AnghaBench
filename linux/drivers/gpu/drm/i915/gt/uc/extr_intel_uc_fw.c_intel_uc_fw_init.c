
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc_fw {int type; int obj; } ;


 int DRM_DEBUG_DRIVER (char*,int ,int) ;
 int ENOEXEC ;
 int GEM_BUG_ON (int ) ;
 int INTEL_UC_FIRMWARE_FAIL ;
 int i915_gem_object_pin_pages (int ) ;
 int intel_uc_fw_change_status (struct intel_uc_fw*,int ) ;
 int intel_uc_fw_is_available (struct intel_uc_fw*) ;
 int intel_uc_fw_is_loaded (struct intel_uc_fw*) ;
 int intel_uc_fw_type_repr (int ) ;

int intel_uc_fw_init(struct intel_uc_fw *uc_fw)
{
 int err;


 GEM_BUG_ON(intel_uc_fw_is_loaded(uc_fw));

 if (!intel_uc_fw_is_available(uc_fw))
  return -ENOEXEC;

 err = i915_gem_object_pin_pages(uc_fw->obj);
 if (err) {
  DRM_DEBUG_DRIVER("%s fw pin-pages err=%d\n",
     intel_uc_fw_type_repr(uc_fw->type), err);
  intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_FAIL);
 }

 return err;
}
