
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {int dummy; } ;


 int bochs_unload (struct drm_device*) ;
 int drm_atomic_helper_shutdown (struct drm_device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void bochs_pci_remove(struct pci_dev *pdev)
{
 struct drm_device *dev = pci_get_drvdata(pdev);

 drm_atomic_helper_shutdown(dev);
 drm_dev_unregister(dev);
 bochs_unload(dev);
 drm_dev_put(dev);
}
