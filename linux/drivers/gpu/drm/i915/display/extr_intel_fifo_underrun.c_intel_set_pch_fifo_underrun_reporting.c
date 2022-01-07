
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {int pch_fifo_underrun_disabled; } ;
struct drm_i915_private {int irq_lock; int drm; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 scalar_t__ HAS_PCH_IBX (struct drm_i915_private*) ;
 int cpt_set_fifo_underrun_reporting (int *,int,int,int) ;
 int ibx_set_fifo_underrun_reporting (int *,int,int) ;
 struct intel_crtc* intel_get_crtc_for_pipe (struct drm_i915_private*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool intel_set_pch_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
        enum pipe pch_transcoder,
        bool enable)
{
 struct intel_crtc *crtc =
  intel_get_crtc_for_pipe(dev_priv, pch_transcoder);
 unsigned long flags;
 bool old;
 spin_lock_irqsave(&dev_priv->irq_lock, flags);

 old = !crtc->pch_fifo_underrun_disabled;
 crtc->pch_fifo_underrun_disabled = !enable;

 if (HAS_PCH_IBX(dev_priv))
  ibx_set_fifo_underrun_reporting(&dev_priv->drm,
      pch_transcoder,
      enable);
 else
  cpt_set_fifo_underrun_reporting(&dev_priv->drm,
      pch_transcoder,
      enable, old);

 spin_unlock_irqrestore(&dev_priv->irq_lock, flags);
 return old;
}
