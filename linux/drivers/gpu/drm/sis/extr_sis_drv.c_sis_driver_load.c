
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {void* dev_private; int pdev; } ;
struct TYPE_3__ {unsigned long chipset; int object_idr; } ;
typedef TYPE_1__ drm_sis_private_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int idr_init (int *) ;
 TYPE_1__* kzalloc (int,int ) ;
 int pci_set_master (int ) ;

__attribute__((used)) static int sis_driver_load(struct drm_device *dev, unsigned long chipset)
{
 drm_sis_private_t *dev_priv;

 pci_set_master(dev->pdev);

 dev_priv = kzalloc(sizeof(drm_sis_private_t), GFP_KERNEL);
 if (dev_priv == ((void*)0))
  return -ENOMEM;

 idr_init(&dev_priv->object_idr);
 dev->dev_private = (void *)dev_priv;
 dev_priv->chipset = chipset;

 return 0;
}
