
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_property {int dummy; } ;
struct drm_device {int dummy; } ;


 struct drm_property* drm_property_create_range (struct drm_device*,int ,char const*,int ,int) ;

struct drm_property *drm_property_create_bool(struct drm_device *dev,
           u32 flags, const char *name)
{
 return drm_property_create_range(dev, flags, name, 0, 1);
}
