
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psb_intel_opregion {TYPE_1__* acpi; int header; } ;
struct drm_psb_private {struct psb_intel_opregion opregion; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct TYPE_2__ {int drdy; scalar_t__ csts; } ;


 int psb_intel_opregion_notifier ;
 int register_acpi_notifier (int *) ;
 struct psb_intel_opregion* system_opregion ;

void psb_intel_opregion_init(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct psb_intel_opregion *opregion = &dev_priv->opregion;

 if (!opregion->header)
  return;

 if (opregion->acpi) {



  opregion->acpi->csts = 0;
  opregion->acpi->drdy = 1;

  system_opregion = opregion;
  register_acpi_notifier(&psb_intel_opregion_notifier);
 }
}
