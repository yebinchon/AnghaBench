
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_property {int dummy; } ;
struct TYPE_2__ {struct drm_property* hdr_output_metadata_property; struct drm_property* non_desktop_property; struct drm_property* link_status_property; struct drm_property* tile_property; struct drm_property* path_property; struct drm_property* dpms_property; struct drm_property* edid_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_MODE_PROP_BLOB ;
 int DRM_MODE_PROP_IMMUTABLE ;
 int ENOMEM ;
 int drm_dpms_enum_list ;
 int drm_link_status_enum_list ;
 struct drm_property* drm_property_create (struct drm_device*,int,char*,int ) ;
 struct drm_property* drm_property_create_bool (struct drm_device*,int,char*) ;
 struct drm_property* drm_property_create_enum (struct drm_device*,int ,char*,int ,int ) ;

int drm_connector_create_standard_properties(struct drm_device *dev)
{
 struct drm_property *prop;

 prop = drm_property_create(dev, DRM_MODE_PROP_BLOB |
       DRM_MODE_PROP_IMMUTABLE,
       "EDID", 0);
 if (!prop)
  return -ENOMEM;
 dev->mode_config.edid_property = prop;

 prop = drm_property_create_enum(dev, 0,
       "DPMS", drm_dpms_enum_list,
       ARRAY_SIZE(drm_dpms_enum_list));
 if (!prop)
  return -ENOMEM;
 dev->mode_config.dpms_property = prop;

 prop = drm_property_create(dev,
       DRM_MODE_PROP_BLOB |
       DRM_MODE_PROP_IMMUTABLE,
       "PATH", 0);
 if (!prop)
  return -ENOMEM;
 dev->mode_config.path_property = prop;

 prop = drm_property_create(dev,
       DRM_MODE_PROP_BLOB |
       DRM_MODE_PROP_IMMUTABLE,
       "TILE", 0);
 if (!prop)
  return -ENOMEM;
 dev->mode_config.tile_property = prop;

 prop = drm_property_create_enum(dev, 0, "link-status",
     drm_link_status_enum_list,
     ARRAY_SIZE(drm_link_status_enum_list));
 if (!prop)
  return -ENOMEM;
 dev->mode_config.link_status_property = prop;

 prop = drm_property_create_bool(dev, DRM_MODE_PROP_IMMUTABLE, "non-desktop");
 if (!prop)
  return -ENOMEM;
 dev->mode_config.non_desktop_property = prop;

 prop = drm_property_create(dev, DRM_MODE_PROP_BLOB,
       "HDR_OUTPUT_METADATA", 0);
 if (!prop)
  return -ENOMEM;
 dev->mode_config.hdr_output_metadata_property = prop;

 return 0;
}
