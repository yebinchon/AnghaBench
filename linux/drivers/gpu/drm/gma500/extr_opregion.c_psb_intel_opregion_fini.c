
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psb_intel_opregion {int * vbt; int * asle; int * swsci; TYPE_1__* acpi; int * header; int asle_work; } ;
struct drm_psb_private {struct psb_intel_opregion opregion; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct TYPE_2__ {scalar_t__ drdy; } ;


 int cancel_work_sync (int *) ;
 int iounmap (int *) ;
 int psb_intel_opregion_notifier ;
 int * system_opregion ;
 int unregister_acpi_notifier (int *) ;

void psb_intel_opregion_fini(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct psb_intel_opregion *opregion = &dev_priv->opregion;

 if (!opregion->header)
  return;

 if (opregion->acpi) {
  opregion->acpi->drdy = 0;

  system_opregion = ((void*)0);
  unregister_acpi_notifier(&psb_intel_opregion_notifier);
 }

 cancel_work_sync(&opregion->asle_work);


 iounmap(opregion->header);
 opregion->header = ((void*)0);
 opregion->acpi = ((void*)0);
 opregion->swsci = ((void*)0);
 opregion->asle = ((void*)0);
 opregion->vbt = ((void*)0);
}
