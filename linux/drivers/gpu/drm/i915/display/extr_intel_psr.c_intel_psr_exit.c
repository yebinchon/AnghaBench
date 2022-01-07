
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int active; scalar_t__ psr2_enabled; } ;
struct drm_i915_private {TYPE_1__ psr; } ;


 int EDP_PSR2_CTL ;
 int EDP_PSR2_ENABLE ;
 int EDP_PSR_CTL ;
 int EDP_PSR_ENABLE ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int WARN_ON (int) ;

__attribute__((used)) static void intel_psr_exit(struct drm_i915_private *dev_priv)
{
 u32 val;

 if (!dev_priv->psr.active) {
  if (INTEL_GEN(dev_priv) >= 9)
   WARN_ON(I915_READ(EDP_PSR2_CTL) & EDP_PSR2_ENABLE);
  WARN_ON(I915_READ(EDP_PSR_CTL) & EDP_PSR_ENABLE);
  return;
 }

 if (dev_priv->psr.psr2_enabled) {
  val = I915_READ(EDP_PSR2_CTL);
  WARN_ON(!(val & EDP_PSR2_ENABLE));
  I915_WRITE(EDP_PSR2_CTL, val & ~EDP_PSR2_ENABLE);
 } else {
  val = I915_READ(EDP_PSR_CTL);
  WARN_ON(!(val & EDP_PSR_ENABLE));
  I915_WRITE(EDP_PSR_CTL, val & ~EDP_PSR_ENABLE);
 }
 dev_priv->psr.active = 0;
}
