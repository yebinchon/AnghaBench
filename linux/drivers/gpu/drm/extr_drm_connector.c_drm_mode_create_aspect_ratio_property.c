
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * aspect_ratio_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int drm_aspect_ratio_enum_list ;
 int * drm_property_create_enum (struct drm_device*,int ,char*,int ,int ) ;

int drm_mode_create_aspect_ratio_property(struct drm_device *dev)
{
 if (dev->mode_config.aspect_ratio_property)
  return 0;

 dev->mode_config.aspect_ratio_property =
  drm_property_create_enum(dev, 0, "aspect ratio",
    drm_aspect_ratio_enum_list,
    ARRAY_SIZE(drm_aspect_ratio_enum_list));

 if (dev->mode_config.aspect_ratio_property == ((void*)0))
  return -ENOMEM;

 return 0;
}
