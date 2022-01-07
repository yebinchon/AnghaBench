
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int uncore; } ;


 scalar_t__ HAS_PCH_MCC (struct drm_i915_private*) ;
 scalar_t__ HAS_PCH_TGP (struct drm_i915_private*) ;
 scalar_t__ I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int ICP_DDI_HPD_ENABLE_MASK ;
 int ICP_TC_HPD_ENABLE_MASK ;
 int POSTING_READ (int ) ;
 int SDEIER ;
 int SDEIIR ;
 int SDEIMR ;
 int SDE_GMBUS_ICP ;
 int TGP_DDI_HPD_ENABLE_MASK ;
 int TGP_TC_HPD_ENABLE_MASK ;
 int WARN_ON (int) ;
 int gen3_assert_iir_is_zero (int *,int ) ;
 int icp_hpd_detection_setup (struct drm_i915_private*,int ,int ) ;

__attribute__((used)) static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
{
 u32 mask = SDE_GMBUS_ICP;

 WARN_ON(I915_READ(SDEIER) != 0);
 I915_WRITE(SDEIER, 0xffffffff);
 POSTING_READ(SDEIER);

 gen3_assert_iir_is_zero(&dev_priv->uncore, SDEIIR);
 I915_WRITE(SDEIMR, ~mask);

 if (HAS_PCH_TGP(dev_priv))
  icp_hpd_detection_setup(dev_priv, TGP_DDI_HPD_ENABLE_MASK,
     TGP_TC_HPD_ENABLE_MASK);
 else if (HAS_PCH_MCC(dev_priv))
  icp_hpd_detection_setup(dev_priv, TGP_DDI_HPD_ENABLE_MASK, 0);
 else
  icp_hpd_detection_setup(dev_priv, ICP_DDI_HPD_ENABLE_MASK,
     ICP_TC_HPD_ENABLE_MASK);
}
