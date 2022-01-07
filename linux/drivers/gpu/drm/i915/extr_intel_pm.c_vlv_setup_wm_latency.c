
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* pri_latency; size_t max_level; } ;
struct drm_i915_private {TYPE_1__ wm; } ;


 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 size_t VLV_WM_LEVEL_DDR_DVFS ;
 size_t VLV_WM_LEVEL_PM2 ;
 size_t VLV_WM_LEVEL_PM5 ;

__attribute__((used)) static void vlv_setup_wm_latency(struct drm_i915_private *dev_priv)
{

 dev_priv->wm.pri_latency[VLV_WM_LEVEL_PM2] = 3;

 dev_priv->wm.max_level = VLV_WM_LEVEL_PM2;

 if (IS_CHERRYVIEW(dev_priv)) {
  dev_priv->wm.pri_latency[VLV_WM_LEVEL_PM5] = 12;
  dev_priv->wm.pri_latency[VLV_WM_LEVEL_DDR_DVFS] = 33;

  dev_priv->wm.max_level = VLV_WM_LEVEL_DDR_DVFS;
 }
}
