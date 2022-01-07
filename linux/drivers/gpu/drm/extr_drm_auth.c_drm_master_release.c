
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_master {int magic_map; } ;
struct drm_file {struct drm_master* master; scalar_t__ is_master; scalar_t__ magic; TYPE_1__* minor; } ;
struct drm_device {int master_mutex; struct drm_master* master; } ;
struct TYPE_2__ {struct drm_device* dev; } ;


 int DRIVER_MODESET ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int drm_drop_master (struct drm_device*,struct drm_file*) ;
 int drm_is_current_master (struct drm_file*) ;
 int drm_lease_revoke (struct drm_master*) ;
 int drm_legacy_lock_master_cleanup (struct drm_device*,struct drm_master*) ;
 int drm_master_put (struct drm_master**) ;
 int idr_remove (int *,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_master_release(struct drm_file *file_priv)
{
 struct drm_device *dev = file_priv->minor->dev;
 struct drm_master *master = file_priv->master;

 mutex_lock(&dev->master_mutex);
 if (file_priv->magic)
  idr_remove(&file_priv->master->magic_map, file_priv->magic);

 if (!drm_is_current_master(file_priv))
  goto out;

 drm_legacy_lock_master_cleanup(dev, master);

 if (dev->master == file_priv->master)
  drm_drop_master(dev, file_priv);
out:
 if (drm_core_check_feature(dev, DRIVER_MODESET) && file_priv->is_master) {



  drm_lease_revoke(master);
 }


 if (file_priv->master)
  drm_master_put(&file_priv->master);
 mutex_unlock(&dev->master_mutex);
}
