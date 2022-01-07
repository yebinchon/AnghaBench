
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_file {TYPE_1__* master; int is_master; } ;
struct drm_device {int master_mutex; scalar_t__ master; } ;
struct TYPE_2__ {int lessee_id; int * lessor; } ;


 int DRM_DEBUG_LEASE (char*,int ) ;
 int EINVAL ;
 scalar_t__ drm_is_current_master (struct drm_file*) ;
 int drm_new_set_master (struct drm_device*,struct drm_file*) ;
 int drm_set_master (struct drm_device*,struct drm_file*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drm_setmaster_ioctl(struct drm_device *dev, void *data,
   struct drm_file *file_priv)
{
 int ret = 0;

 mutex_lock(&dev->master_mutex);
 if (drm_is_current_master(file_priv))
  goto out_unlock;

 if (dev->master) {
  ret = -EINVAL;
  goto out_unlock;
 }

 if (!file_priv->master) {
  ret = -EINVAL;
  goto out_unlock;
 }

 if (!file_priv->is_master) {
  ret = drm_new_set_master(dev, file_priv);
  goto out_unlock;
 }

 if (file_priv->master->lessor != ((void*)0)) {
  DRM_DEBUG_LEASE("Attempt to set lessee %d as master\n", file_priv->master->lessee_id);
  ret = -EINVAL;
  goto out_unlock;
 }

 ret = drm_set_master(dev, file_priv, 0);
out_unlock:
 mutex_unlock(&dev->master_mutex);
 return ret;
}
