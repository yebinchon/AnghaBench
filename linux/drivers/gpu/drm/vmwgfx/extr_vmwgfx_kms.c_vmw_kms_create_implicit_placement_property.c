
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int dev; scalar_t__ implicit_placement_property; } ;


 int DRM_MODE_PROP_IMMUTABLE ;
 scalar_t__ drm_property_create_range (int ,int ,char*,int ,int) ;

void
vmw_kms_create_implicit_placement_property(struct vmw_private *dev_priv)
{
 if (dev_priv->implicit_placement_property)
  return;

 dev_priv->implicit_placement_property =
  drm_property_create_range(dev_priv->dev,
       DRM_MODE_PROP_IMMUTABLE,
       "implicit_placement", 0, 1);
}
