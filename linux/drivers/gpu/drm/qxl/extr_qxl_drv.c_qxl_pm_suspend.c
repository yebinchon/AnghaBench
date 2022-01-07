
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int PCI_D3hot ;
 int pci_disable_device (struct pci_dev*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int qxl_drm_freeze (struct drm_device*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int qxl_pm_suspend(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct drm_device *drm_dev = pci_get_drvdata(pdev);
 int error;

 error = qxl_drm_freeze(drm_dev);
 if (error)
  return error;

 pci_disable_device(pdev);
 pci_set_power_state(pdev, PCI_D3hot);
 return 0;
}
