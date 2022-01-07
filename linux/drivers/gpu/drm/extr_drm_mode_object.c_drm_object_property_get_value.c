
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct drm_property {int dev; } ;
struct drm_mode_object {int dummy; } ;


 int WARN_ON (int ) ;
 int __drm_object_property_get_value (struct drm_mode_object*,struct drm_property*,int *) ;
 int drm_drv_uses_atomic_modeset (int ) ;

int drm_object_property_get_value(struct drm_mode_object *obj,
      struct drm_property *property, uint64_t *val)
{
 WARN_ON(drm_drv_uses_atomic_modeset(property->dev));

 return __drm_object_property_get_value(obj, property, val);
}
