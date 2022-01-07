
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct drm_property {int * values; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_PROP_ATOMIC ;
 int DRM_MODE_PROP_OBJECT ;
 scalar_t__ WARN_ON (int) ;
 struct drm_property* drm_property_create (struct drm_device*,int,char const*,int) ;

struct drm_property *drm_property_create_object(struct drm_device *dev,
      u32 flags, const char *name,
      uint32_t type)
{
 struct drm_property *property;

 flags |= DRM_MODE_PROP_OBJECT;

 if (WARN_ON(!(flags & DRM_MODE_PROP_ATOMIC)))
  return ((void*)0);

 property = drm_property_create(dev, flags, name, 1);
 if (!property)
  return ((void*)0);

 property->values[0] = type;

 return property;
}
