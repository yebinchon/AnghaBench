
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_file {TYPE_1__* master; } ;
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_6__ {scalar_t__ page_flipping; } ;
typedef TYPE_2__ drm_i810_private_t ;
struct TYPE_7__ {scalar_t__ hw_lock; } ;
struct TYPE_5__ {TYPE_3__ lock; } ;


 int drm_legacy_idlelock_release (TYPE_3__*) ;
 int drm_legacy_idlelock_take (TYPE_3__*) ;
 int i810_do_cleanup_pageflip (struct drm_device*) ;
 int i810_driver_reclaim_buffers (struct drm_device*,struct drm_file*) ;

void i810_driver_preclose(struct drm_device *dev, struct drm_file *file_priv)
{
 if (dev->dev_private) {
  drm_i810_private_t *dev_priv = dev->dev_private;
  if (dev_priv->page_flipping)
   i810_do_cleanup_pageflip(dev);
 }

 if (file_priv->master && file_priv->master->lock.hw_lock) {
  drm_legacy_idlelock_take(&file_priv->master->lock);
  i810_driver_reclaim_buffers(dev, file_priv);
  drm_legacy_idlelock_release(&file_priv->master->lock);
 } else {


  i810_driver_reclaim_buffers(dev, file_priv);
 }

}
