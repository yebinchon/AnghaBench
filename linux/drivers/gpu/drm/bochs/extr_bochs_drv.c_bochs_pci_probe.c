
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct drm_device {struct pci_dev* pdev; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct drm_device*) ;
 int PTR_ERR (struct drm_device*) ;
 int bochs_driver ;
 int bochs_load (struct drm_device*) ;
 int bochs_unload (struct drm_device*) ;
 struct drm_device* drm_dev_alloc (int *,int *) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int drm_fb_helper_remove_conflicting_pci_framebuffers (struct pci_dev*,int ,char*) ;
 int drm_fbdev_generic_setup (struct drm_device*,int) ;
 int pci_enable_device (struct pci_dev*) ;
 unsigned long pci_resource_len (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct drm_device*) ;

__attribute__((used)) static int bochs_pci_probe(struct pci_dev *pdev,
      const struct pci_device_id *ent)
{
 struct drm_device *dev;
 unsigned long fbsize;
 int ret;

 fbsize = pci_resource_len(pdev, 0);
 if (fbsize < 4 * 1024 * 1024) {
  DRM_ERROR("less than 4 MB video memory, ignoring device\n");
  return -ENOMEM;
 }

 ret = drm_fb_helper_remove_conflicting_pci_framebuffers(pdev, 0, "bochsdrmfb");
 if (ret)
  return ret;

 dev = drm_dev_alloc(&bochs_driver, &pdev->dev);
 if (IS_ERR(dev))
  return PTR_ERR(dev);

 ret = pci_enable_device(pdev);
 if (ret)
  goto err_free_dev;

 dev->pdev = pdev;
 pci_set_drvdata(pdev, dev);

 ret = bochs_load(dev);
 if (ret)
  goto err_free_dev;

 ret = drm_dev_register(dev, 0);
 if (ret)
  goto err_unload;

 drm_fbdev_generic_setup(dev, 32);
 return ret;

err_unload:
 bochs_unload(dev);
err_free_dev:
 drm_dev_put(dev);
 return ret;
}
