
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* pri_latency; scalar_t__* spr_latency; scalar_t__* cur_latency; } ;
struct drm_i915_private {TYPE_1__ wm; } ;


 int DRM_DEBUG_KMS (char*) ;
 int intel_print_wm_latency (struct drm_i915_private*,char*,scalar_t__*) ;

__attribute__((used)) static void snb_wm_lp3_irq_quirk(struct drm_i915_private *dev_priv)
{
 if (dev_priv->wm.pri_latency[3] == 0 &&
     dev_priv->wm.spr_latency[3] == 0 &&
     dev_priv->wm.cur_latency[3] == 0)
  return;

 dev_priv->wm.pri_latency[3] = 0;
 dev_priv->wm.spr_latency[3] = 0;
 dev_priv->wm.cur_latency[3] = 0;

 DRM_DEBUG_KMS("LP3 watermarks disabled due to potential for lost interrupts\n");
 intel_print_wm_latency(dev_priv, "Primary", dev_priv->wm.pri_latency);
 intel_print_wm_latency(dev_priv, "Sprite", dev_priv->wm.spr_latency);
 intel_print_wm_latency(dev_priv, "Cursor", dev_priv->wm.cur_latency);
}
