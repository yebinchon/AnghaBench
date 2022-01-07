
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_4__ {int * virtual_start; int map; } ;
struct TYPE_5__ {TYPE_1__ ring; } ;
typedef TYPE_2__ drm_via_private_t ;


 int drm_legacy_ioremapfree (int *,struct drm_device*) ;
 int via_cmdbuf_reset (TYPE_2__*) ;

int via_dma_cleanup(struct drm_device *dev)
{
 if (dev->dev_private) {
  drm_via_private_t *dev_priv =
      (drm_via_private_t *) dev->dev_private;

  if (dev_priv->ring.virtual_start) {
   via_cmdbuf_reset(dev_priv);

   drm_legacy_ioremapfree(&dev_priv->ring.map, dev);
   dev_priv->ring.virtual_start = ((void*)0);
  }

 }

 return 0;
}
