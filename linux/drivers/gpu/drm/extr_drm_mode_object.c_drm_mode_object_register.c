
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_object {int id; } ;
struct TYPE_2__ {int idr_mutex; int object_idr; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int idr_replace (int *,struct drm_mode_object*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_mode_object_register(struct drm_device *dev,
         struct drm_mode_object *obj)
{
 mutex_lock(&dev->mode_config.idr_mutex);
 idr_replace(&dev->mode_config.object_idr, obj, obj->id);
 mutex_unlock(&dev->mode_config.idr_mutex);
}
