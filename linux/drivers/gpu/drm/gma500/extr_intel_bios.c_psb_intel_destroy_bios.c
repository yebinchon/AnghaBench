
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int lvds_bl; int lfp_lvds_vbt_mode; int sdvo_lvds_vbt_mode; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int kfree (int ) ;

void psb_intel_destroy_bios(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;

 kfree(dev_priv->sdvo_lvds_vbt_mode);
 kfree(dev_priv->lfp_lvds_vbt_mode);
 kfree(dev_priv->lvds_bl);
}
