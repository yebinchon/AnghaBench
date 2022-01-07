
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct drm_device {TYPE_4__* pdev; void* dev_private; TYPE_8__* agp; } ;
struct TYPE_11__ {unsigned long chipset; int mmio_size; int mmio_base; int usec_timeout; } ;
typedef TYPE_3__ drm_mga_private_t ;
struct TYPE_13__ {int agp_mtrr; } ;
struct TYPE_12__ {int device; TYPE_2__* bus; } ;
struct TYPE_10__ {TYPE_1__* self; } ;
struct TYPE_9__ {int vendor; int device; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MGA_DEFAULT_USEC_TIMEOUT ;
 int arch_phys_wc_del (int ) ;
 int drm_vblank_init (struct drm_device*,int) ;
 int kfree (TYPE_8__*) ;
 TYPE_3__* kzalloc (int,int ) ;
 int mga_driver_unload (struct drm_device*) ;
 int pci_resource_len (TYPE_4__*,int) ;
 int pci_resource_start (TYPE_4__*,int) ;
 int pci_set_master (TYPE_4__*) ;

int mga_driver_load(struct drm_device *dev, unsigned long flags)
{
 drm_mga_private_t *dev_priv;
 int ret;
 if ((dev->pdev->device == 0x0525) && dev->pdev->bus->self
     && (dev->pdev->bus->self->vendor == 0x3388)
     && (dev->pdev->bus->self->device == 0x0021)
     && dev->agp) {


  arch_phys_wc_del(dev->agp->agp_mtrr);
  kfree(dev->agp);
  dev->agp = ((void*)0);
 }
 dev_priv = kzalloc(sizeof(drm_mga_private_t), GFP_KERNEL);
 if (!dev_priv)
  return -ENOMEM;

 dev->dev_private = (void *)dev_priv;

 dev_priv->usec_timeout = MGA_DEFAULT_USEC_TIMEOUT;
 dev_priv->chipset = flags;

 pci_set_master(dev->pdev);

 dev_priv->mmio_base = pci_resource_start(dev->pdev, 1);
 dev_priv->mmio_size = pci_resource_len(dev->pdev, 1);

 ret = drm_vblank_init(dev, 1);

 if (ret) {
  (void) mga_driver_unload(dev);
  return ret;
 }

 return 0;
}
