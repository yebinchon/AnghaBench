
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int uncore; } ;


 scalar_t__ HAS_PCH_CPT (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_IBX (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_LPT (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_NOP (struct drm_i915_private*) ;
 int I915_WRITE (int ,int) ;
 int SDEIIR ;
 int SDEIMR ;
 int SDE_AUX_MASK ;
 int SDE_AUX_MASK_CPT ;
 int SDE_GMBUS ;
 int SDE_GMBUS_CPT ;
 int SDE_POISON ;
 int gen3_assert_iir_is_zero (int *,int ) ;
 int ibx_hpd_detection_setup (struct drm_i915_private*) ;
 int spt_hpd_detection_setup (struct drm_i915_private*) ;

__attribute__((used)) static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
{
 u32 mask;

 if (HAS_PCH_NOP(dev_priv))
  return;

 if (HAS_PCH_IBX(dev_priv))
  mask = SDE_GMBUS | SDE_AUX_MASK | SDE_POISON;
 else if (HAS_PCH_CPT(dev_priv) || HAS_PCH_LPT(dev_priv))
  mask = SDE_GMBUS_CPT | SDE_AUX_MASK_CPT;
 else
  mask = SDE_GMBUS_CPT;

 gen3_assert_iir_is_zero(&dev_priv->uncore, SDEIIR);
 I915_WRITE(SDEIMR, ~mask);

 if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv) ||
     HAS_PCH_LPT(dev_priv))
  ibx_hpd_detection_setup(dev_priv);
 else
  spt_hpd_detection_setup(dev_priv);
}
