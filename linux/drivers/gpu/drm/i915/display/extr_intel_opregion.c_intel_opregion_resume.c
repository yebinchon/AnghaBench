
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_opregion {TYPE_1__* asle; TYPE_2__* acpi; int header; } ;
struct drm_i915_private {struct intel_opregion opregion; } ;
struct TYPE_4__ {int drdy; scalar_t__ csts; } ;
struct TYPE_3__ {int ardy; int tche; } ;


 int ASLE_ARDY_READY ;
 int ASLE_TCHE_BLC_EN ;
 int PCI_D0 ;
 int intel_didl_outputs (struct drm_i915_private*) ;
 int intel_opregion_notify_adapter (struct drm_i915_private*,int ) ;
 int intel_setup_cadls (struct drm_i915_private*) ;

void intel_opregion_resume(struct drm_i915_private *i915)
{
 struct intel_opregion *opregion = &i915->opregion;

 if (!opregion->header)
  return;

 if (opregion->acpi) {
  intel_didl_outputs(i915);
  intel_setup_cadls(i915);






  opregion->acpi->csts = 0;
  opregion->acpi->drdy = 1;
 }

 if (opregion->asle) {
  opregion->asle->tche = ASLE_TCHE_BLC_EN;
  opregion->asle->ardy = ASLE_ARDY_READY;
 }

 intel_opregion_notify_adapter(i915, PCI_D0);
}
