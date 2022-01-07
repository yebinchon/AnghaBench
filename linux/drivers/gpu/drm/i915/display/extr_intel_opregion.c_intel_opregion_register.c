
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int notifier_call; } ;
struct intel_opregion {TYPE_1__ acpi_notifier; scalar_t__ acpi; int header; } ;
struct drm_i915_private {struct intel_opregion opregion; } ;


 int intel_opregion_resume (struct drm_i915_private*) ;
 int intel_opregion_video_event ;
 int register_acpi_notifier (TYPE_1__*) ;

void intel_opregion_register(struct drm_i915_private *i915)
{
 struct intel_opregion *opregion = &i915->opregion;

 if (!opregion->header)
  return;

 if (opregion->acpi) {
  opregion->acpi_notifier.notifier_call =
   intel_opregion_video_event;
  register_acpi_notifier(&opregion->acpi_notifier);
 }

 intel_opregion_resume(i915);
}
