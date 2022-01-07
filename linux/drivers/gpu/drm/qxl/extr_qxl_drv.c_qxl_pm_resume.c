
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int EIO ;
 int PCI_D0 ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_restore_state (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int qxl_drm_resume (struct drm_device*,int) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int qxl_pm_resume(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct drm_device *drm_dev = pci_get_drvdata(pdev);

 pci_set_power_state(pdev, PCI_D0);
 pci_restore_state(pdev);
 if (pci_enable_device(pdev)) {
  return -EIO;
 }

 return qxl_drm_resume(drm_dev, 0);
}
