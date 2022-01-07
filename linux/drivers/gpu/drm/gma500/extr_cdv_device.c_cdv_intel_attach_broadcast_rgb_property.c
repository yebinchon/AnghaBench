
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {struct drm_property* broadcast_rgb_property; } ;
struct drm_property {int dummy; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct drm_connector {int base; struct drm_device* dev; } ;


 int ARRAY_SIZE (int *) ;
 int DRM_MODE_PROP_ENUM ;
 int * broadcast_rgb_names ;
 int drm_object_attach_property (int *,struct drm_property*,int ) ;
 int drm_property_add_enum (struct drm_property*,int,int ) ;
 struct drm_property* drm_property_create (struct drm_device*,int ,char*,int) ;

void cdv_intel_attach_broadcast_rgb_property(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct drm_property *prop;
 int i;

 prop = dev_priv->broadcast_rgb_property;
 if (prop == ((void*)0)) {
  prop = drm_property_create(dev, DRM_MODE_PROP_ENUM,
        "Broadcast RGB",
        ARRAY_SIZE(broadcast_rgb_names));
  if (prop == ((void*)0))
   return;

  for (i = 0; i < ARRAY_SIZE(broadcast_rgb_names); i++)
   drm_property_add_enum(prop, i, broadcast_rgb_names[i]);

  dev_priv->broadcast_rgb_property = prop;
 }

 drm_object_attach_property(&connector->base, prop, 0);
}
