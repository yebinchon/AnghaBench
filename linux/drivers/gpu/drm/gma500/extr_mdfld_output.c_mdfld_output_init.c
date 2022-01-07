
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int mdfld_panel_id; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int HDMI ;
 int TC35876X ;
 int mdfld_init_panel (struct drm_device*,int,int ) ;

int mdfld_output_init(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;


 dev_priv->mdfld_panel_id = TC35876X;

 mdfld_init_panel(dev, 0, dev_priv->mdfld_panel_id);

 mdfld_init_panel(dev, 1, HDMI);
 return 0;
}
