
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_opregion {TYPE_2__* acpi; int asle_work; TYPE_1__* asle; int header; } ;
struct drm_i915_private {struct intel_opregion opregion; } ;
typedef int pci_power_t ;
struct TYPE_4__ {scalar_t__ drdy; } ;
struct TYPE_3__ {int ardy; } ;


 int ASLE_ARDY_NOT_READY ;
 int cancel_work_sync (int *) ;
 int intel_opregion_notify_adapter (struct drm_i915_private*,int ) ;

void intel_opregion_suspend(struct drm_i915_private *i915, pci_power_t state)
{
 struct intel_opregion *opregion = &i915->opregion;

 if (!opregion->header)
  return;

 intel_opregion_notify_adapter(i915, state);

 if (opregion->asle)
  opregion->asle->ardy = ASLE_ARDY_NOT_READY;

 cancel_work_sync(&i915->opregion.asle_work);

 if (opregion->acpi)
  opregion->acpi->drdy = 0;
}
