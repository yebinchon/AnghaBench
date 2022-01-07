
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {scalar_t__ hotplug_mode_update_property; int dev; } ;


 int DRM_MODE_PROP_IMMUTABLE ;
 scalar_t__ drm_property_create_range (int ,int ,char*,int ,int) ;

__attribute__((used)) static void
vmw_kms_create_hotplug_mode_update_property(struct vmw_private *dev_priv)
{
 if (dev_priv->hotplug_mode_update_property)
  return;

 dev_priv->hotplug_mode_update_property =
  drm_property_create_range(dev_priv->dev,
       DRM_MODE_PROP_IMMUTABLE,
       "hotplug_mode_update", 0, 1);

 if (!dev_priv->hotplug_mode_update_property)
  return;

}
