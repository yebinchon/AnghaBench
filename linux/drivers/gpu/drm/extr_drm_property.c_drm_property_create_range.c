
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u32 ;
struct drm_property {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_PROP_RANGE ;
 struct drm_property* property_create_range (struct drm_device*,int,char const*,int ,int ) ;

struct drm_property *drm_property_create_range(struct drm_device *dev,
            u32 flags, const char *name,
            uint64_t min, uint64_t max)
{
 return property_create_range(dev, DRM_MODE_PROP_RANGE | flags,
   name, min, max);
}
