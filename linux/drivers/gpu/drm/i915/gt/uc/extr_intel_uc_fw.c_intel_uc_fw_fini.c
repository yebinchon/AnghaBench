
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc_fw {int obj; } ;


 int i915_gem_object_unpin_pages (int ) ;
 int intel_uc_fw_is_available (struct intel_uc_fw*) ;

void intel_uc_fw_fini(struct intel_uc_fw *uc_fw)
{
 if (!intel_uc_fw_is_available(uc_fw))
  return;

 i915_gem_object_unpin_pages(uc_fw->obj);
}
