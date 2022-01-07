
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_master {scalar_t__ lessee_id; scalar_t__ lessor; int lessee_list; int lessees; struct drm_device* dev; } ;
struct TYPE_3__ {int idr_mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct TYPE_4__ {int lessee_idr; } ;


 int DRM_DEBUG_LEASE (char*,scalar_t__) ;
 int WARN_ON (int) ;
 TYPE_2__* drm_lease_owner (struct drm_master*) ;
 int drm_master_put (scalar_t__*) ;
 int drm_sysfs_lease_event (struct drm_device*) ;
 int idr_remove (int *,scalar_t__) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_lease_destroy(struct drm_master *master)
{
 struct drm_device *dev = master->dev;

 mutex_lock(&dev->mode_config.idr_mutex);

 DRM_DEBUG_LEASE("drm_lease_destroy %d\n", master->lessee_id);




 WARN_ON(!list_empty(&master->lessees));


 if (master->lessee_id != 0) {
  DRM_DEBUG_LEASE("remove master %d from device list of lessees\n", master->lessee_id);
  idr_remove(&(drm_lease_owner(master)->lessee_idr), master->lessee_id);
 }


 list_del(&master->lessee_list);

 mutex_unlock(&dev->mode_config.idr_mutex);

 if (master->lessor) {

  drm_sysfs_lease_event(dev);
  drm_master_put(&master->lessor);
 }

 DRM_DEBUG_LEASE("drm_lease_destroy done %d\n", master->lessee_id);
}
