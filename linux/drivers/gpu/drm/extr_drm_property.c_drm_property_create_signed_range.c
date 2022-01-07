
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_property {int dummy; } ;
struct drm_device {int dummy; } ;
typedef int int64_t ;


 int DRM_MODE_PROP_SIGNED_RANGE ;
 int I642U64 (int ) ;
 struct drm_property* property_create_range (struct drm_device*,int,char const*,int ,int ) ;

struct drm_property *drm_property_create_signed_range(struct drm_device *dev,
            u32 flags, const char *name,
            int64_t min, int64_t max)
{
 return property_create_range(dev, DRM_MODE_PROP_SIGNED_RANGE | flags,
   name, I642U64(min), I642U64(max));
}
