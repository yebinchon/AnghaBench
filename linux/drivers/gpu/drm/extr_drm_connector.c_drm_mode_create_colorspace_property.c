
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_property {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {scalar_t__ connector_type; struct drm_property* colorspace_property; struct drm_device* dev; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_DEBUG_KMS (char*) ;
 scalar_t__ DRM_MODE_CONNECTOR_HDMIA ;
 scalar_t__ DRM_MODE_CONNECTOR_HDMIB ;
 int DRM_MODE_PROP_ENUM ;
 int ENOMEM ;
 struct drm_property* drm_property_create_enum (struct drm_device*,int ,char*,int ,int ) ;
 int hdmi_colorspaces ;

int drm_mode_create_colorspace_property(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct drm_property *prop;

 if (connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
     connector->connector_type == DRM_MODE_CONNECTOR_HDMIB) {
  prop = drm_property_create_enum(dev, DRM_MODE_PROP_ENUM,
      "Colorspace",
      hdmi_colorspaces,
      ARRAY_SIZE(hdmi_colorspaces));
  if (!prop)
   return -ENOMEM;
 } else {
  DRM_DEBUG_KMS("Colorspace property not supported\n");
  return 0;
 }

 connector->colorspace_property = prop;

 return 0;
}
