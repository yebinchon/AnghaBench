
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {scalar_t__ msi_enabled; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct drm_i915_private {int pm_qos; TYPE_1__ drm; } ;


 int i915_perf_fini (struct drm_i915_private*) ;
 int pci_disable_msi (struct pci_dev*) ;
 int pm_qos_remove_request (int *) ;

__attribute__((used)) static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
{
 struct pci_dev *pdev = dev_priv->drm.pdev;

 i915_perf_fini(dev_priv);

 if (pdev->msi_enabled)
  pci_disable_msi(pdev);

 pm_qos_remove_request(&dev_priv->pm_qos);
}
