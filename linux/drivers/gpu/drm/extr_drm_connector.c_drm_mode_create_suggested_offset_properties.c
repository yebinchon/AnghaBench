
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * suggested_y_property; int * suggested_x_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int DRM_MODE_PROP_IMMUTABLE ;
 int ENOMEM ;
 void* drm_property_create_range (struct drm_device*,int ,char*,int ,int) ;

int drm_mode_create_suggested_offset_properties(struct drm_device *dev)
{
 if (dev->mode_config.suggested_x_property && dev->mode_config.suggested_y_property)
  return 0;

 dev->mode_config.suggested_x_property =
  drm_property_create_range(dev, DRM_MODE_PROP_IMMUTABLE, "suggested X", 0, 0xffffffff);

 dev->mode_config.suggested_y_property =
  drm_property_create_range(dev, DRM_MODE_PROP_IMMUTABLE, "suggested Y", 0, 0xffffffff);

 if (dev->mode_config.suggested_x_property == ((void*)0) ||
     dev->mode_config.suggested_y_property == ((void*)0))
  return -ENOMEM;
 return 0;
}
