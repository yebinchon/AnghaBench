
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int display_power; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;



bool gma_power_is_on(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 return dev_priv->display_power;
}
