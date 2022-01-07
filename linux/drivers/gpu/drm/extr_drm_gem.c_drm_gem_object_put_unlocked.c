
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_object {int refcount; struct drm_device* dev; } ;
struct drm_device {int struct_mutex; TYPE_1__* driver; } ;
struct TYPE_2__ {scalar_t__ gem_free_object; } ;


 int drm_gem_object_free ;
 int kref_put (int *,int ) ;
 scalar_t__ kref_put_mutex (int *,int ,int *) ;
 int might_lock (int *) ;
 int mutex_unlock (int *) ;

void
drm_gem_object_put_unlocked(struct drm_gem_object *obj)
{
 struct drm_device *dev;

 if (!obj)
  return;

 dev = obj->dev;

 if (dev->driver->gem_free_object) {
  might_lock(&dev->struct_mutex);
  if (kref_put_mutex(&obj->refcount, drm_gem_object_free,
    &dev->struct_mutex))
   mutex_unlock(&dev->struct_mutex);
 } else {
  kref_put(&obj->refcount, drm_gem_object_free);
 }
}
