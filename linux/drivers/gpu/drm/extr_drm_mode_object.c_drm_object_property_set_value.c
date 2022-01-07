
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
 int WARN_ON (int) ;
 scalar_t__ drm_drv_uses_atomic_modeset (int ) ;

int drm_object_property_set_value(struct drm_mode_object *obj,
      struct drm_property *property, uint64_t val)
{
 int i;

 WARN_ON(drm_drv_uses_atomic_modeset(property->dev) &&
  !(property->flags & DRM_MODE_PROP_IMMUTABLE));

 for (i = 0; i < obj->properties->count; i++) {
  if (obj->properties->properties[i] == property) {
   obj->properties->values[i] = val;
   return 0;
  }
 }

 return -EINVAL;
}
