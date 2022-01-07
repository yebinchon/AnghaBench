
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int mdfld_panel_id; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;



int mdfld_get_panel_type(struct drm_device *dev, int pipe)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 return dev_priv->mdfld_panel_id;
}
