
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cur_latency; int spr_latency; int pri_latency; } ;
struct drm_i915_private {TYPE_1__ wm; } ;


 int DRM_DEBUG_KMS (char*) ;
 int ilk_increase_wm_latency (struct drm_i915_private*,int ,int) ;
 int intel_print_wm_latency (struct drm_i915_private*,char*,int ) ;

__attribute__((used)) static void snb_wm_latency_quirk(struct drm_i915_private *dev_priv)
{
 bool changed;





 changed = ilk_increase_wm_latency(dev_priv, dev_priv->wm.pri_latency, 12) |
  ilk_increase_wm_latency(dev_priv, dev_priv->wm.spr_latency, 12) |
  ilk_increase_wm_latency(dev_priv, dev_priv->wm.cur_latency, 12);

 if (!changed)
  return;

 DRM_DEBUG_KMS("WM latency values increased to avoid potential underruns\n");
 intel_print_wm_latency(dev_priv, "Primary", dev_priv->wm.pri_latency);
 intel_print_wm_latency(dev_priv, "Sprite", dev_priv->wm.spr_latency);
 intel_print_wm_latency(dev_priv, "Cursor", dev_priv->wm.cur_latency);
}
