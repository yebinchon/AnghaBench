
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {int dev_private; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int ast_drm_freeze (struct drm_device*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int ast_pm_freeze(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct drm_device *ddev = pci_get_drvdata(pdev);

 if (!ddev || !ddev->dev_private)
  return -ENODEV;
 return ast_drm_freeze(ddev);

}
