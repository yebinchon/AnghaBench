
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 scalar_t__ HAS_GMCH (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int cherryview_irq_reset (struct drm_i915_private*) ;
 int gen11_irq_reset (struct drm_i915_private*) ;
 int gen8_irq_reset (struct drm_i915_private*) ;
 int i8xx_irq_reset (struct drm_i915_private*) ;
 int i915_irq_reset (struct drm_i915_private*) ;
 int i965_irq_reset (struct drm_i915_private*) ;
 int ironlake_irq_reset (struct drm_i915_private*) ;
 int valleyview_irq_reset (struct drm_i915_private*) ;

__attribute__((used)) static void intel_irq_reset(struct drm_i915_private *dev_priv)
{
 if (HAS_GMCH(dev_priv)) {
  if (IS_CHERRYVIEW(dev_priv))
   cherryview_irq_reset(dev_priv);
  else if (IS_VALLEYVIEW(dev_priv))
   valleyview_irq_reset(dev_priv);
  else if (IS_GEN(dev_priv, 4))
   i965_irq_reset(dev_priv);
  else if (IS_GEN(dev_priv, 3))
   i915_irq_reset(dev_priv);
  else
   i8xx_irq_reset(dev_priv);
 } else {
  if (INTEL_GEN(dev_priv) >= 11)
   gen11_irq_reset(dev_priv);
  else if (INTEL_GEN(dev_priv) >= 8)
   gen8_irq_reset(dev_priv);
  else
   ironlake_irq_reset(dev_priv);
 }
}
