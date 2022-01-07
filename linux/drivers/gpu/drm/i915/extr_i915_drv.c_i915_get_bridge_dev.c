
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pdev; } ;
struct drm_i915_private {int bridge_dev; TYPE_2__ drm; } ;
struct TYPE_3__ {int bus; } ;


 int DRM_ERROR (char*) ;
 int PCI_DEVFN (int ,int ) ;
 int pci_domain_nr (int ) ;
 int pci_get_domain_bus_and_slot (int,int ,int ) ;

__attribute__((used)) static int i915_get_bridge_dev(struct drm_i915_private *dev_priv)
{
 int domain = pci_domain_nr(dev_priv->drm.pdev->bus);

 dev_priv->bridge_dev =
  pci_get_domain_bus_and_slot(domain, 0, PCI_DEVFN(0, 0));
 if (!dev_priv->bridge_dev) {
  DRM_ERROR("bridge device not found\n");
  return -1;
 }
 return 0;
}
