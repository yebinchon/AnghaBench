
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef int irq_handler_t ;


 scalar_t__ HAS_GMCH (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int cherryview_irq_handler ;
 int gen11_irq_handler ;
 int gen8_irq_handler ;
 int i8xx_irq_handler ;
 int i915_irq_handler ;
 int i965_irq_handler ;
 int ironlake_irq_handler ;
 int valleyview_irq_handler ;

__attribute__((used)) static irq_handler_t intel_irq_handler(struct drm_i915_private *dev_priv)
{
 if (HAS_GMCH(dev_priv)) {
  if (IS_CHERRYVIEW(dev_priv))
   return cherryview_irq_handler;
  else if (IS_VALLEYVIEW(dev_priv))
   return valleyview_irq_handler;
  else if (IS_GEN(dev_priv, 4))
   return i965_irq_handler;
  else if (IS_GEN(dev_priv, 3))
   return i915_irq_handler;
  else
   return i8xx_irq_handler;
 } else {
  if (INTEL_GEN(dev_priv) >= 11)
   return gen11_irq_handler;
  else if (INTEL_GEN(dev_priv) >= 8)
   return gen8_irq_handler;
  else
   return ironlake_irq_handler;
 }
}
