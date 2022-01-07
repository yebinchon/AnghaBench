
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_revoke_lease {int lessee_id; } ;
struct drm_master {struct drm_master* lessor; } ;
struct drm_file {struct drm_master* master; } ;
struct TYPE_2__ {int idr_mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int DRIVER_MODESET ;
 int DRM_DEBUG_LEASE (char*,int ) ;
 int EACCES ;
 int ENOENT ;
 int EOPNOTSUPP ;
 struct drm_master* _drm_find_lessee (struct drm_master*,int ) ;
 int _drm_lease_revoke (struct drm_master*) ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drm_mode_revoke_lease_ioctl(struct drm_device *dev,
    void *data, struct drm_file *lessor_priv)
{
 struct drm_mode_revoke_lease *arg = data;
 struct drm_master *lessor = lessor_priv->master;
 struct drm_master *lessee;
 int ret = 0;

 DRM_DEBUG_LEASE("revoke lease for %d\n", arg->lessee_id);


 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  return -EOPNOTSUPP;

 mutex_lock(&dev->mode_config.idr_mutex);

 lessee = _drm_find_lessee(lessor, arg->lessee_id);


 if (!lessee) {
  ret = -ENOENT;
  goto fail;
 }


 if (lessee->lessor != lessor) {
  ret = -EACCES;
  goto fail;
 }

 _drm_lease_revoke(lessee);

fail:
 mutex_unlock(&dev->mode_config.idr_mutex);

 return ret;
}
