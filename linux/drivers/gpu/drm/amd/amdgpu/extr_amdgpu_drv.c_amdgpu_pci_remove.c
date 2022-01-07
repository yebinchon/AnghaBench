
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unplug (struct drm_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void
amdgpu_pci_remove(struct pci_dev *pdev)
{
 struct drm_device *dev = pci_get_drvdata(pdev);

 DRM_ERROR("Device removal is currently not supported outside of fbcon\n");
 drm_dev_unplug(dev);
 drm_dev_put(dev);
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));
}
