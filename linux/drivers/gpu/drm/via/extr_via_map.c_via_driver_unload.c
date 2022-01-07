
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_3__ {int object_idr; } ;
typedef TYPE_1__ drm_via_private_t ;


 int idr_destroy (int *) ;
 int kfree (TYPE_1__*) ;

void via_driver_unload(struct drm_device *dev)
{
 drm_via_private_t *dev_priv = dev->dev_private;

 idr_destroy(&dev_priv->object_idr);

 kfree(dev_priv);
}
