
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
typedef int u32 ;
struct drm_property {void** values; } ;
struct drm_device {int dummy; } ;


 struct drm_property* drm_property_create (struct drm_device*,int ,char const*,int) ;

__attribute__((used)) static struct drm_property *property_create_range(struct drm_device *dev,
        u32 flags, const char *name,
        uint64_t min, uint64_t max)
{
 struct drm_property *property;

 property = drm_property_create(dev, flags, name, 2);
 if (!property)
  return ((void*)0);

 property->values[0] = min;
 property->values[1] = max;

 return property;
}
