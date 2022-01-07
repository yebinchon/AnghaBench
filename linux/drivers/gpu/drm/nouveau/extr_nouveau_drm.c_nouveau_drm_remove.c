
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {int dummy; } ;


 int nouveau_drm_device_remove (struct drm_device*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void
nouveau_drm_remove(struct pci_dev *pdev)
{
 struct drm_device *dev = pci_get_drvdata(pdev);

 nouveau_drm_device_remove(dev);
}
