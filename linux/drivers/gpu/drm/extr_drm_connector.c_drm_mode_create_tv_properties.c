
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_property {int dummy; } ;
struct TYPE_2__ {void* tv_hue_property; void* tv_saturation_property; void* tv_overscan_property; void* tv_flicker_reduction_property; void* tv_contrast_property; void* tv_brightness_property; int tv_mode_property; struct drm_property* tv_subconnector_property; struct drm_property* tv_select_subconnector_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_MODE_PROP_ENUM ;
 int DRM_MODE_PROP_IMMUTABLE ;
 int ENOMEM ;
 scalar_t__ drm_mode_create_tv_margin_properties (struct drm_device*) ;
 int drm_property_add_enum (int ,unsigned int,char const* const) ;
 int drm_property_create (struct drm_device*,int ,char*,unsigned int) ;
 struct drm_property* drm_property_create_enum (struct drm_device*,int ,char*,int ,int ) ;
 void* drm_property_create_range (struct drm_device*,int ,char*,int ,int) ;
 int drm_tv_select_enum_list ;
 int drm_tv_subconnector_enum_list ;

int drm_mode_create_tv_properties(struct drm_device *dev,
      unsigned int num_modes,
      const char * const modes[])
{
 struct drm_property *tv_selector;
 struct drm_property *tv_subconnector;
 unsigned int i;

 if (dev->mode_config.tv_select_subconnector_property)
  return 0;




 tv_selector = drm_property_create_enum(dev, 0,
       "select subconnector",
       drm_tv_select_enum_list,
       ARRAY_SIZE(drm_tv_select_enum_list));
 if (!tv_selector)
  goto nomem;

 dev->mode_config.tv_select_subconnector_property = tv_selector;

 tv_subconnector =
  drm_property_create_enum(dev, DRM_MODE_PROP_IMMUTABLE,
        "subconnector",
        drm_tv_subconnector_enum_list,
        ARRAY_SIZE(drm_tv_subconnector_enum_list));
 if (!tv_subconnector)
  goto nomem;
 dev->mode_config.tv_subconnector_property = tv_subconnector;




 if (drm_mode_create_tv_margin_properties(dev))
  goto nomem;

 dev->mode_config.tv_mode_property =
  drm_property_create(dev, DRM_MODE_PROP_ENUM,
        "mode", num_modes);
 if (!dev->mode_config.tv_mode_property)
  goto nomem;

 for (i = 0; i < num_modes; i++)
  drm_property_add_enum(dev->mode_config.tv_mode_property,
          i, modes[i]);

 dev->mode_config.tv_brightness_property =
  drm_property_create_range(dev, 0, "brightness", 0, 100);
 if (!dev->mode_config.tv_brightness_property)
  goto nomem;

 dev->mode_config.tv_contrast_property =
  drm_property_create_range(dev, 0, "contrast", 0, 100);
 if (!dev->mode_config.tv_contrast_property)
  goto nomem;

 dev->mode_config.tv_flicker_reduction_property =
  drm_property_create_range(dev, 0, "flicker reduction", 0, 100);
 if (!dev->mode_config.tv_flicker_reduction_property)
  goto nomem;

 dev->mode_config.tv_overscan_property =
  drm_property_create_range(dev, 0, "overscan", 0, 100);
 if (!dev->mode_config.tv_overscan_property)
  goto nomem;

 dev->mode_config.tv_saturation_property =
  drm_property_create_range(dev, 0, "saturation", 0, 100);
 if (!dev->mode_config.tv_saturation_property)
  goto nomem;

 dev->mode_config.tv_hue_property =
  drm_property_create_range(dev, 0, "hue", 0, 100);
 if (!dev->mode_config.tv_hue_property)
  goto nomem;

 return 0;
nomem:
 return -ENOMEM;
}
