
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_property {int dummy; } ;
struct drm_prop_enum_list {int name; int type; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_PROP_ENUM ;
 int drm_property_add_enum (struct drm_property*,int ,int ) ;
 struct drm_property* drm_property_create (struct drm_device*,int ,char const*,int) ;
 int drm_property_destroy (struct drm_device*,struct drm_property*) ;

struct drm_property *drm_property_create_enum(struct drm_device *dev,
           u32 flags, const char *name,
           const struct drm_prop_enum_list *props,
           int num_values)
{
 struct drm_property *property;
 int i, ret;

 flags |= DRM_MODE_PROP_ENUM;

 property = drm_property_create(dev, flags, name, num_values);
 if (!property)
  return ((void*)0);

 for (i = 0; i < num_values; i++) {
  ret = drm_property_add_enum(property,
         props[i].type,
         props[i].name);
  if (ret) {
   drm_property_destroy(dev, property);
   return ((void*)0);
  }
 }

 return property;
}
