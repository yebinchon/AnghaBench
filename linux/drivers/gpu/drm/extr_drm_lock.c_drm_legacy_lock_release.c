
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct file {struct drm_file* private_data; } ;
struct drm_file {TYPE_2__* master; } ;
struct drm_device {int master; } ;
struct TYPE_6__ {TYPE_1__* hw_lock; } ;
struct TYPE_5__ {TYPE_3__ lock; } ;
struct TYPE_4__ {int lock; } ;


 int DRM_DEBUG (char*,struct file*,int ) ;
 int _DRM_LOCKING_CONTEXT (int ) ;
 scalar_t__ drm_legacy_i_have_hw_lock (struct drm_device*,struct drm_file*) ;
 int drm_legacy_lock_free (TYPE_3__*,int ) ;

void drm_legacy_lock_release(struct drm_device *dev, struct file *filp)
{
 struct drm_file *file_priv = filp->private_data;


 if (!dev->master)
  return;

 if (drm_legacy_i_have_hw_lock(dev, file_priv)) {
  DRM_DEBUG("File %p released, freeing lock for context %d\n",
     filp, _DRM_LOCKING_CONTEXT(file_priv->master->lock.hw_lock->lock));
  drm_legacy_lock_free(&file_priv->master->lock,
         _DRM_LOCKING_CONTEXT(file_priv->master->lock.hw_lock->lock));
 }
}
