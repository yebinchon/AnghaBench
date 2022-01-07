
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct drm_device {struct cirrus_device* dev_private; } ;
struct cirrus_device {int vram; int mmio; } ;


 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int iounmap (int ) ;
 int kfree (struct cirrus_device*) ;
 struct drm_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static void cirrus_pci_remove(struct pci_dev *pdev)
{
 struct drm_device *dev = pci_get_drvdata(pdev);
 struct cirrus_device *cirrus = dev->dev_private;

 drm_dev_unregister(dev);
 drm_mode_config_cleanup(dev);
 iounmap(cirrus->mmio);
 iounmap(cirrus->vram);
 drm_dev_put(dev);
 kfree(cirrus);
 pci_release_regions(pdev);
}
