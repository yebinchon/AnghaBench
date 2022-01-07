
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_gem_object {int refcount; TYPE_1__* dev; } ;
struct TYPE_2__ {int struct_mutex; } ;


 int WARN_ON (int) ;
 int drm_gem_object_free ;
 int kref_put (int *,int ) ;
 int mutex_is_locked (int *) ;

void
drm_gem_object_put(struct drm_gem_object *obj)
{
 if (obj) {
  WARN_ON(!mutex_is_locked(&obj->dev->struct_mutex));

  kref_put(&obj->refcount, drm_gem_object_free);
 }
}
