
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int pps_mmio_base; } ;


 scalar_t__ HAS_PCH_SPLIT (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int PCH_PPS_BASE ;
 int PPS_BASE ;
 int VLV_PPS_BASE ;
 int intel_pps_unlock_regs_wa (struct drm_i915_private*) ;

__attribute__((used)) static void intel_pps_init(struct drm_i915_private *dev_priv)
{
 if (HAS_PCH_SPLIT(dev_priv) || IS_GEN9_LP(dev_priv))
  dev_priv->pps_mmio_base = PCH_PPS_BASE;
 else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
  dev_priv->pps_mmio_base = VLV_PPS_BASE;
 else
  dev_priv->pps_mmio_base = PPS_BASE;

 intel_pps_unlock_regs_wa(dev_priv);
}
