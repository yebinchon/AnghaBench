
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cur_latency; int spr_latency; int pri_latency; } ;
struct drm_i915_private {TYPE_1__ wm; } ;


 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int intel_fixup_cur_wm_latency (struct drm_i915_private*,int ) ;
 int intel_fixup_spr_wm_latency (struct drm_i915_private*,int ) ;
 int intel_print_wm_latency (struct drm_i915_private*,char*,int ) ;
 int intel_read_wm_latency (struct drm_i915_private*,int ) ;
 int memcpy (int ,int ,int) ;
 int snb_wm_latency_quirk (struct drm_i915_private*) ;
 int snb_wm_lp3_irq_quirk (struct drm_i915_private*) ;

__attribute__((used)) static void ilk_setup_wm_latency(struct drm_i915_private *dev_priv)
{
 intel_read_wm_latency(dev_priv, dev_priv->wm.pri_latency);

 memcpy(dev_priv->wm.spr_latency, dev_priv->wm.pri_latency,
        sizeof(dev_priv->wm.pri_latency));
 memcpy(dev_priv->wm.cur_latency, dev_priv->wm.pri_latency,
        sizeof(dev_priv->wm.pri_latency));

 intel_fixup_spr_wm_latency(dev_priv, dev_priv->wm.spr_latency);
 intel_fixup_cur_wm_latency(dev_priv, dev_priv->wm.cur_latency);

 intel_print_wm_latency(dev_priv, "Primary", dev_priv->wm.pri_latency);
 intel_print_wm_latency(dev_priv, "Sprite", dev_priv->wm.spr_latency);
 intel_print_wm_latency(dev_priv, "Cursor", dev_priv->wm.cur_latency);

 if (IS_GEN(dev_priv, 6)) {
  snb_wm_latency_quirk(dev_priv);
  snb_wm_lp3_irq_quirk(dev_priv);
 }
}
