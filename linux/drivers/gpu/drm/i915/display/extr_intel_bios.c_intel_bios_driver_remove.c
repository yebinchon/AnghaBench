
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * deassert_seq; int * config; int * pps; int * data; } ;
struct TYPE_4__ {TYPE_1__ dsi; int * lfp_lvds_vbt_mode; int * sdvo_lvds_vbt_mode; scalar_t__ child_dev_num; int * child_dev; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;


 int kfree (int *) ;

void intel_bios_driver_remove(struct drm_i915_private *dev_priv)
{
 kfree(dev_priv->vbt.child_dev);
 dev_priv->vbt.child_dev = ((void*)0);
 dev_priv->vbt.child_dev_num = 0;
 kfree(dev_priv->vbt.sdvo_lvds_vbt_mode);
 dev_priv->vbt.sdvo_lvds_vbt_mode = ((void*)0);
 kfree(dev_priv->vbt.lfp_lvds_vbt_mode);
 dev_priv->vbt.lfp_lvds_vbt_mode = ((void*)0);
 kfree(dev_priv->vbt.dsi.data);
 dev_priv->vbt.dsi.data = ((void*)0);
 kfree(dev_priv->vbt.dsi.pps);
 dev_priv->vbt.dsi.pps = ((void*)0);
 kfree(dev_priv->vbt.dsi.config);
 dev_priv->vbt.dsi.config = ((void*)0);
 kfree(dev_priv->vbt.dsi.deassert_seq);
 dev_priv->vbt.dsi.deassert_seq = ((void*)0);
}
