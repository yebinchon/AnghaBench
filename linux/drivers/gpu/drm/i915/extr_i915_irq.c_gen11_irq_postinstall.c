
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int regs; } ;
struct drm_i915_private {int gt; struct intel_uncore uncore; } ;


 int GEN11_DISPLAY_INT_CTL ;
 int GEN11_DISPLAY_IRQ_ENABLE ;
 int GEN11_GFX_MSTR_IRQ ;
 int GEN11_GU_MISC_ ;
 int GEN11_GU_MISC_GSE ;
 int GEN3_IRQ_INIT (struct intel_uncore*,int ,int ,int ) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ INTEL_PCH_TYPE (struct drm_i915_private*) ;
 scalar_t__ PCH_ICP ;
 int POSTING_READ (int ) ;
 int gen11_gt_irq_postinstall (int *) ;
 int gen11_master_intr_enable (int ) ;
 int gen8_de_irq_postinstall (struct drm_i915_private*) ;
 int icp_irq_postinstall (struct drm_i915_private*) ;

__attribute__((used)) static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
{
 struct intel_uncore *uncore = &dev_priv->uncore;
 u32 gu_misc_masked = GEN11_GU_MISC_GSE;

 if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
  icp_irq_postinstall(dev_priv);

 gen11_gt_irq_postinstall(&dev_priv->gt);
 gen8_de_irq_postinstall(dev_priv);

 GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);

 I915_WRITE(GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);

 gen11_master_intr_enable(uncore->regs);
 POSTING_READ(GEN11_GFX_MSTR_IRQ);
}
