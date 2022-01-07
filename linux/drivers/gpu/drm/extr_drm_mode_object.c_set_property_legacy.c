
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct drm_property {struct drm_device* dev; } ;
struct drm_mode_object {int type; } ;
struct drm_device {int dummy; } ;





 int EINVAL ;
 int drm_connector_set_obj_prop (struct drm_mode_object*,struct drm_property*,int ) ;
 int drm_mode_crtc_set_obj_prop (struct drm_mode_object*,struct drm_property*,int ) ;
 int drm_mode_plane_set_obj_prop (int ,struct drm_property*,int ) ;
 int drm_modeset_lock_all (struct drm_device*) ;
 int drm_modeset_unlock_all (struct drm_device*) ;
 int drm_property_change_valid_get (struct drm_property*,int ,struct drm_mode_object**) ;
 int drm_property_change_valid_put (struct drm_property*,struct drm_mode_object*) ;
 int obj_to_plane (struct drm_mode_object*) ;

__attribute__((used)) static int set_property_legacy(struct drm_mode_object *obj,
          struct drm_property *prop,
          uint64_t prop_value)
{
 struct drm_device *dev = prop->dev;
 struct drm_mode_object *ref;
 int ret = -EINVAL;

 if (!drm_property_change_valid_get(prop, prop_value, &ref))
  return -EINVAL;

 drm_modeset_lock_all(dev);
 switch (obj->type) {
 case 130:
  ret = drm_connector_set_obj_prop(obj, prop, prop_value);
  break;
 case 129:
  ret = drm_mode_crtc_set_obj_prop(obj, prop, prop_value);
  break;
 case 128:
  ret = drm_mode_plane_set_obj_prop(obj_to_plane(obj),
        prop, prop_value);
  break;
 }
 drm_property_change_valid_put(prop, ref);
 drm_modeset_unlock_all(dev);

 return ret;
}
