
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_fbc {int underrun_work; int underrun_detected; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;


 scalar_t__ READ_ONCE (int ) ;
 int fbc_supported (struct drm_i915_private*) ;
 int schedule_work (int *) ;

void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *dev_priv)
{
 struct intel_fbc *fbc = &dev_priv->fbc;

 if (!fbc_supported(dev_priv))
  return;







 if (READ_ONCE(fbc->underrun_detected))
  return;

 schedule_work(&fbc->underrun_work);
}
