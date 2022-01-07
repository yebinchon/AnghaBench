
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_mode_object {scalar_t__ id; int free_cb; } ;
struct TYPE_4__ {int idr_mutex; int object_idr; } ;
struct drm_device {TYPE_2__ mode_config; scalar_t__ registered; TYPE_1__* driver; } ;
struct TYPE_3__ {int load; } ;


 int WARN_ON (int) ;
 int idr_remove (int *,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_mode_object_unregister(struct drm_device *dev,
    struct drm_mode_object *object)
{
 WARN_ON(!dev->driver->load && dev->registered && !object->free_cb);

 mutex_lock(&dev->mode_config.idr_mutex);
 if (object->id) {
  idr_remove(&dev->mode_config.object_idr, object->id);
  object->id = 0;
 }
 mutex_unlock(&dev->mode_config.idr_mutex);
}
