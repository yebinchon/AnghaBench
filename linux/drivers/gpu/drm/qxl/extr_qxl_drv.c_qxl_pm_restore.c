
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {int dummy; } ;
struct pci_dev {int dummy; } ;
struct drm_device {struct qxl_device* dev_private; } ;
struct device {int dummy; } ;


 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int qxl_drm_resume (struct drm_device*,int) ;
 int qxl_io_reset (struct qxl_device*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static int qxl_pm_restore(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 struct drm_device *drm_dev = pci_get_drvdata(pdev);
 struct qxl_device *qdev = drm_dev->dev_private;

 qxl_io_reset(qdev);
 return qxl_drm_resume(drm_dev, 0);
}
