
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * notifier_call; } ;
struct intel_opregion {int * lid_state; int * vbt; int * asle; int * swsci; int * acpi; int * header; int * vbt_firmware; int * rvda; TYPE_1__ acpi_notifier; } ;
struct drm_i915_private {struct intel_opregion opregion; } ;


 int PCI_D1 ;
 int intel_opregion_suspend (struct drm_i915_private*,int ) ;
 int kfree (int *) ;
 int memunmap (int *) ;
 int unregister_acpi_notifier (TYPE_1__*) ;

void intel_opregion_unregister(struct drm_i915_private *i915)
{
 struct intel_opregion *opregion = &i915->opregion;

 intel_opregion_suspend(i915, PCI_D1);

 if (!opregion->header)
  return;

 if (opregion->acpi_notifier.notifier_call) {
  unregister_acpi_notifier(&opregion->acpi_notifier);
  opregion->acpi_notifier.notifier_call = ((void*)0);
 }


 memunmap(opregion->header);
 if (opregion->rvda) {
  memunmap(opregion->rvda);
  opregion->rvda = ((void*)0);
 }
 if (opregion->vbt_firmware) {
  kfree(opregion->vbt_firmware);
  opregion->vbt_firmware = ((void*)0);
 }
 opregion->header = ((void*)0);
 opregion->acpi = ((void*)0);
 opregion->swsci = ((void*)0);
 opregion->asle = ((void*)0);
 opregion->vbt = ((void*)0);
 opregion->lid_state = ((void*)0);
}
