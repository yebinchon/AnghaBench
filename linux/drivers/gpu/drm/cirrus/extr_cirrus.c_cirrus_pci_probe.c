
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {int preferred_depth; } ;
struct drm_device {TYPE_1__ mode_config; struct pci_dev* pdev; struct cirrus_device* dev_private; } ;
struct cirrus_device {int * vram; int * mmio; struct drm_device dev; } ;


 int DRIVER_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cirrus_conn_init (struct cirrus_device*) ;
 int cirrus_driver ;
 int cirrus_mode_config_init (struct cirrus_device*) ;
 int cirrus_pipe_init (struct cirrus_device*) ;
 int drm_dev_init (struct drm_device*,int *,int *) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int drm_fb_helper_remove_conflicting_pci_framebuffers (struct pci_dev*,int ,char*) ;
 int drm_fbdev_generic_setup (struct drm_device*,int ) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int drm_mode_config_reset (struct drm_device*) ;
 void* ioremap (int ,int ) ;
 int iounmap (int *) ;
 int kfree (struct cirrus_device*) ;
 struct cirrus_device* kzalloc (int,int ) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_len (struct pci_dev*,int) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int pci_set_drvdata (struct pci_dev*,struct drm_device*) ;

__attribute__((used)) static int cirrus_pci_probe(struct pci_dev *pdev,
       const struct pci_device_id *ent)
{
 struct drm_device *dev;
 struct cirrus_device *cirrus;
 int ret;

 ret = drm_fb_helper_remove_conflicting_pci_framebuffers(pdev, 0, "cirrusdrmfb");
 if (ret)
  return ret;

 ret = pci_enable_device(pdev);
 if (ret)
  return ret;

 ret = pci_request_regions(pdev, DRIVER_NAME);
 if (ret)
  return ret;

 ret = -ENOMEM;
 cirrus = kzalloc(sizeof(*cirrus), GFP_KERNEL);
 if (cirrus == ((void*)0))
  goto err_pci_release;

 dev = &cirrus->dev;
 ret = drm_dev_init(dev, &cirrus_driver, &pdev->dev);
 if (ret)
  goto err_free_cirrus;
 dev->dev_private = cirrus;

 ret = -ENOMEM;
 cirrus->vram = ioremap(pci_resource_start(pdev, 0),
          pci_resource_len(pdev, 0));
 if (cirrus->vram == ((void*)0))
  goto err_dev_put;

 cirrus->mmio = ioremap(pci_resource_start(pdev, 1),
          pci_resource_len(pdev, 1));
 if (cirrus->mmio == ((void*)0))
  goto err_unmap_vram;

 cirrus_mode_config_init(cirrus);

 ret = cirrus_conn_init(cirrus);
 if (ret < 0)
  goto err_cleanup;

 ret = cirrus_pipe_init(cirrus);
 if (ret < 0)
  goto err_cleanup;

 drm_mode_config_reset(dev);

 dev->pdev = pdev;
 pci_set_drvdata(pdev, dev);
 ret = drm_dev_register(dev, 0);
 if (ret)
  goto err_cleanup;

 drm_fbdev_generic_setup(dev, dev->mode_config.preferred_depth);
 return 0;

err_cleanup:
 drm_mode_config_cleanup(dev);
 iounmap(cirrus->mmio);
err_unmap_vram:
 iounmap(cirrus->vram);
err_dev_put:
 drm_dev_put(dev);
err_free_cirrus:
 kfree(cirrus);
err_pci_release:
 pci_release_regions(pdev);
 return ret;
}
