
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int GEN11_DE_HPD_IMR ;
 int GEN11_DE_TBT_HOTPLUG_MASK ;
 int GEN11_DE_TC_HOTPLUG_MASK ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ INTEL_PCH_TYPE (struct drm_i915_private*) ;
 scalar_t__ PCH_ICP ;
 scalar_t__ PCH_TGP ;
 int POSTING_READ (int ) ;
 int gen11_hpd_detection_setup (struct drm_i915_private*) ;
 int* hpd_gen11 ;
 int* hpd_gen12 ;
 int icp_hpd_irq_setup (struct drm_i915_private*) ;
 int intel_hpd_enabled_irqs (struct drm_i915_private*,int const*) ;
 int tgp_hpd_irq_setup (struct drm_i915_private*) ;

__attribute__((used)) static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
{
 u32 hotplug_irqs, enabled_irqs;
 const u32 *hpd;
 u32 val;

 hpd = INTEL_GEN(dev_priv) >= 12 ? hpd_gen12 : hpd_gen11;
 enabled_irqs = intel_hpd_enabled_irqs(dev_priv, hpd);
 hotplug_irqs = GEN11_DE_TC_HOTPLUG_MASK | GEN11_DE_TBT_HOTPLUG_MASK;

 val = I915_READ(GEN11_DE_HPD_IMR);
 val &= ~hotplug_irqs;
 I915_WRITE(GEN11_DE_HPD_IMR, val);
 POSTING_READ(GEN11_DE_HPD_IMR);

 gen11_hpd_detection_setup(dev_priv);

 if (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP)
  tgp_hpd_irq_setup(dev_priv);
 else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
  icp_hpd_irq_setup(dev_priv);
}
