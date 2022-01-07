
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int runtime_pm; int gt; } ;
typedef int irqreturn_t ;


 int DEIER ;
 int DEIIR ;
 int DE_MASTER_IRQ_CONTROL ;
 int GEN6_PMIIR ;
 int GTIIR ;
 int HAS_PCH_NOP (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SDEIER ;
 int disable_rpm_wakeref_asserts (int *) ;
 int enable_rpm_wakeref_asserts (int *) ;
 int gen5_gt_irq_handler (int *,int) ;
 int gen6_gt_irq_handler (int *,int) ;
 int gen6_rps_irq_handler (struct drm_i915_private*,int) ;
 int ilk_display_irq_handler (struct drm_i915_private*,int) ;
 int intel_irqs_enabled (struct drm_i915_private*) ;
 int ivb_display_irq_handler (struct drm_i915_private*,int) ;

__attribute__((used)) static irqreturn_t ironlake_irq_handler(int irq, void *arg)
{
 struct drm_i915_private *dev_priv = arg;
 u32 de_iir, gt_iir, de_ier, sde_ier = 0;
 irqreturn_t ret = IRQ_NONE;

 if (!intel_irqs_enabled(dev_priv))
  return IRQ_NONE;


 disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);


 de_ier = I915_READ(DEIER);
 I915_WRITE(DEIER, de_ier & ~DE_MASTER_IRQ_CONTROL);






 if (!HAS_PCH_NOP(dev_priv)) {
  sde_ier = I915_READ(SDEIER);
  I915_WRITE(SDEIER, 0);
 }



 gt_iir = I915_READ(GTIIR);
 if (gt_iir) {
  I915_WRITE(GTIIR, gt_iir);
  ret = IRQ_HANDLED;
  if (INTEL_GEN(dev_priv) >= 6)
   gen6_gt_irq_handler(&dev_priv->gt, gt_iir);
  else
   gen5_gt_irq_handler(&dev_priv->gt, gt_iir);
 }

 de_iir = I915_READ(DEIIR);
 if (de_iir) {
  I915_WRITE(DEIIR, de_iir);
  ret = IRQ_HANDLED;
  if (INTEL_GEN(dev_priv) >= 7)
   ivb_display_irq_handler(dev_priv, de_iir);
  else
   ilk_display_irq_handler(dev_priv, de_iir);
 }

 if (INTEL_GEN(dev_priv) >= 6) {
  u32 pm_iir = I915_READ(GEN6_PMIIR);
  if (pm_iir) {
   I915_WRITE(GEN6_PMIIR, pm_iir);
   ret = IRQ_HANDLED;
   gen6_rps_irq_handler(dev_priv, pm_iir);
  }
 }

 I915_WRITE(DEIER, de_ier);
 if (!HAS_PCH_NOP(dev_priv))
  I915_WRITE(SDEIER, sde_ier);


 enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);

 return ret;
}
