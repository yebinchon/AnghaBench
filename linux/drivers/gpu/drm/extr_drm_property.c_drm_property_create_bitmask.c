
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef int u32 ;
struct drm_property {int dummy; } ;
struct drm_prop_enum_list {unsigned long long type; int name; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_PROP_BITMASK ;
 int drm_property_add_enum (struct drm_property*,unsigned long long,int ) ;
 struct drm_property* drm_property_create (struct drm_device*,int ,char const*,int) ;
 int drm_property_destroy (struct drm_device*,struct drm_property*) ;
 int hweight64 (unsigned long long) ;

struct drm_property *drm_property_create_bitmask(struct drm_device *dev,
       u32 flags, const char *name,
       const struct drm_prop_enum_list *props,
       int num_props,
       uint64_t supported_bits)
{
 struct drm_property *property;
 int i, ret;
 int num_values = hweight64(supported_bits);

 flags |= DRM_MODE_PROP_BITMASK;

 property = drm_property_create(dev, flags, name, num_values);
 if (!property)
  return ((void*)0);
 for (i = 0; i < num_props; i++) {
  if (!(supported_bits & (1ULL << props[i].type)))
   continue;

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
