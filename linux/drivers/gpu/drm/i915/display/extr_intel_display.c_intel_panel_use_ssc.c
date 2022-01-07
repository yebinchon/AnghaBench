
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lvds_use_ssc; } ;
struct drm_i915_private {int quirks; TYPE_1__ vbt; } ;
struct TYPE_4__ {scalar_t__ panel_use_ssc; } ;


 int QUIRK_LVDS_SSC_DISABLE ;
 TYPE_2__ i915_modparams ;

__attribute__((used)) static inline bool intel_panel_use_ssc(struct drm_i915_private *dev_priv)
{
 if (i915_modparams.panel_use_ssc >= 0)
  return i915_modparams.panel_use_ssc != 0;
 return dev_priv->vbt.lvds_use_ssc
  && !(dev_priv->quirks & QUIRK_LVDS_SSC_DISABLE);
}
