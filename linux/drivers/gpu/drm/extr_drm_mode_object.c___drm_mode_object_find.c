
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct drm_mode_object {scalar_t__ type; scalar_t__ id; int refcount; scalar_t__ free_cb; } ;
struct drm_file {int dummy; } ;
struct TYPE_2__ {int idr_mutex; int object_idr; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 scalar_t__ DRM_MODE_OBJECT_ANY ;
 int _drm_lease_held (struct drm_file*,scalar_t__) ;
 scalar_t__ drm_mode_object_lease_required (scalar_t__) ;
 struct drm_mode_object* idr_find (int *,scalar_t__) ;
 int kref_get_unless_zero (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct drm_mode_object *__drm_mode_object_find(struct drm_device *dev,
            struct drm_file *file_priv,
            uint32_t id, uint32_t type)
{
 struct drm_mode_object *obj = ((void*)0);

 mutex_lock(&dev->mode_config.idr_mutex);
 obj = idr_find(&dev->mode_config.object_idr, id);
 if (obj && type != DRM_MODE_OBJECT_ANY && obj->type != type)
  obj = ((void*)0);
 if (obj && obj->id != id)
  obj = ((void*)0);

 if (obj && drm_mode_object_lease_required(obj->type) &&
     !_drm_lease_held(file_priv, obj->id))
  obj = ((void*)0);

 if (obj && obj->free_cb) {
  if (!kref_get_unless_zero(&obj->refcount))
   obj = ((void*)0);
 }
 mutex_unlock(&dev->mode_config.idr_mutex);

 return obj;
}
