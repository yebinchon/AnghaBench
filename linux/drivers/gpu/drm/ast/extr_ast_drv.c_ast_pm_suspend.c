
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int PCI_D3hot ;
 int ast_drm_freeze (struct drm_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int ast_pm_suspend(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct drm_device *ddev = pci_get_drvdata(pdev);
 int error;

 error = ast_drm_freeze(ddev);
 if (error)
  return error;

 pci_disable_device(pdev);
 pci_set_power_state(pdev, PCI_D3hot);
 return 0;
}
