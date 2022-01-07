
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;
struct drm_i915_private {struct intel_uncore uncore; } ;


 int GEN3_IRQ_RESET (struct intel_uncore*,int ) ;
 scalar_t__ HAS_PCH_CPT (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_LPT (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_NOP (struct drm_i915_private*) ;
 int I915_WRITE (int ,int) ;
 int SDE ;
 int SERR_INT ;

__attribute__((used)) static void ibx_irq_reset(struct drm_i915_private *dev_priv)
{
 struct intel_uncore *uncore = &dev_priv->uncore;

 if (HAS_PCH_NOP(dev_priv))
  return;

 GEN3_IRQ_RESET(uncore, SDE);

 if (HAS_PCH_CPT(dev_priv) || HAS_PCH_LPT(dev_priv))
  I915_WRITE(SERR_INT, 0xffffffff);
}
