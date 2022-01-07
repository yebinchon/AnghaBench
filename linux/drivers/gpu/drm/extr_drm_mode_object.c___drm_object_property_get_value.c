
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct drm_property {int flags; int dev; } ;
struct drm_mode_object {TYPE_1__* properties; } ;
struct TYPE_2__ {int count; int * values; struct drm_property** properties; } ;


 int DRM_MODE_PROP_IMMUTABLE ;
 int EINVAL ;
 int drm_atomic_get_property (struct drm_mode_object*,struct drm_property*,int *) ;
 scalar_t__ drm_drv_uses_atomic_modeset (int ) ;

__attribute__((used)) static int __drm_object_property_get_value(struct drm_mode_object *obj,
        struct drm_property *property,
        uint64_t *val)
{
 int i;





 if (drm_drv_uses_atomic_modeset(property->dev) &&
   !(property->flags & DRM_MODE_PROP_IMMUTABLE))
  return drm_atomic_get_property(obj, property, val);

 for (i = 0; i < obj->properties->count; i++) {
  if (obj->properties->properties[i] == property) {
   *val = obj->properties->values[i];
   return 0;
  }

 }

 return -EINVAL;
}
