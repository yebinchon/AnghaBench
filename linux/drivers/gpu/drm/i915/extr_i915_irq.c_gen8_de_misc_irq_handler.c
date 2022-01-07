
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DRM_ERROR (char*) ;
 int EDP_PSR_IIR ;
 int GEN8_DE_EDP_PSR ;
 int GEN8_DE_MISC_GSE ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int intel_opregion_asle_intr (struct drm_i915_private*) ;
 int intel_psr_irq_handler (struct drm_i915_private*,int) ;

__attribute__((used)) static void
gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
{
 bool found = 0;

 if (iir & GEN8_DE_MISC_GSE) {
  intel_opregion_asle_intr(dev_priv);
  found = 1;
 }

 if (iir & GEN8_DE_EDP_PSR) {
  u32 psr_iir = I915_READ(EDP_PSR_IIR);

  intel_psr_irq_handler(dev_priv, psr_iir);
  I915_WRITE(EDP_PSR_IIR, psr_iir);
  found = 1;
 }

 if (!found)
  DRM_ERROR("Unexpected DE Misc interrupt\n");
}
