
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int ast_drm_resume (struct drm_device*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int ast_pm_resume(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct drm_device *ddev = pci_get_drvdata(pdev);
 return ast_drm_resume(ddev);
}
