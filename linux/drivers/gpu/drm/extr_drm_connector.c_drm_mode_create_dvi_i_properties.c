
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_property {int dummy; } ;
struct TYPE_2__ {struct drm_property* dvi_i_subconnector_property; struct drm_property* dvi_i_select_subconnector_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_MODE_PROP_IMMUTABLE ;
 int drm_dvi_i_select_enum_list ;
 int drm_dvi_i_subconnector_enum_list ;
 struct drm_property* drm_property_create_enum (struct drm_device*,int ,char*,int ,int ) ;

int drm_mode_create_dvi_i_properties(struct drm_device *dev)
{
 struct drm_property *dvi_i_selector;
 struct drm_property *dvi_i_subconnector;

 if (dev->mode_config.dvi_i_select_subconnector_property)
  return 0;

 dvi_i_selector =
  drm_property_create_enum(dev, 0,
        "select subconnector",
        drm_dvi_i_select_enum_list,
        ARRAY_SIZE(drm_dvi_i_select_enum_list));
 dev->mode_config.dvi_i_select_subconnector_property = dvi_i_selector;

 dvi_i_subconnector = drm_property_create_enum(dev, DRM_MODE_PROP_IMMUTABLE,
        "subconnector",
        drm_dvi_i_subconnector_enum_list,
        ARRAY_SIZE(drm_dvi_i_subconnector_enum_list));
 dev->mode_config.dvi_i_subconnector_property = dvi_i_subconnector;

 return 0;
}
