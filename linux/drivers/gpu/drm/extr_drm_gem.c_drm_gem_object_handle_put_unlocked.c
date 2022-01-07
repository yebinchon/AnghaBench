
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {scalar_t__ handle_count; struct drm_device* dev; } ;
struct drm_device {int object_name_lock; } ;


 scalar_t__ WARN_ON (int) ;
 int drm_gem_object_exported_dma_buf_free (struct drm_gem_object*) ;
 int drm_gem_object_handle_free (struct drm_gem_object*) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
drm_gem_object_handle_put_unlocked(struct drm_gem_object *obj)
{
 struct drm_device *dev = obj->dev;
 bool final = 0;

 if (WARN_ON(obj->handle_count == 0))
  return;







 mutex_lock(&dev->object_name_lock);
 if (--obj->handle_count == 0) {
  drm_gem_object_handle_free(obj);
  drm_gem_object_exported_dma_buf_free(obj);
  final = 1;
 }
 mutex_unlock(&dev->object_name_lock);

 if (final)
  drm_gem_object_put_unlocked(obj);
}
