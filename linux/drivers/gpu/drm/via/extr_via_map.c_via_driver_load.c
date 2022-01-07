
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device {int pdev; void* dev_private; } ;
struct TYPE_4__ {unsigned long chipset; int object_idr; } ;
typedef TYPE_1__ drm_via_private_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_vblank_init (struct drm_device*,int) ;
 int idr_init (int *) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int pci_set_master (int ) ;

int via_driver_load(struct drm_device *dev, unsigned long chipset)
{
 drm_via_private_t *dev_priv;
 int ret = 0;

 dev_priv = kzalloc(sizeof(drm_via_private_t), GFP_KERNEL);
 if (dev_priv == ((void*)0))
  return -ENOMEM;

 idr_init(&dev_priv->object_idr);
 dev->dev_private = (void *)dev_priv;

 dev_priv->chipset = chipset;

 pci_set_master(dev->pdev);

 ret = drm_vblank_init(dev, 1);
 if (ret) {
  kfree(dev_priv);
  return ret;
 }

 return 0;
}
