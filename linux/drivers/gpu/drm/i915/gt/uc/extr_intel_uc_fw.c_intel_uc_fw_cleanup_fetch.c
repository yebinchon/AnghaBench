
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc_fw {int obj; } ;


 int INTEL_UC_FIRMWARE_SELECTED ;
 int fetch_and_zero (int *) ;
 int i915_gem_object_put (int ) ;
 int intel_uc_fw_change_status (struct intel_uc_fw*,int ) ;
 int intel_uc_fw_is_available (struct intel_uc_fw*) ;

void intel_uc_fw_cleanup_fetch(struct intel_uc_fw *uc_fw)
{
 if (!intel_uc_fw_is_available(uc_fw))
  return;

 i915_gem_object_put(fetch_and_zero(&uc_fw->obj));

 intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_SELECTED);
}
