
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int saveFBC_CONTROL; int saveDSPARB; } ;
struct drm_i915_private {TYPE_1__ regfile; } ;


 int DSPARB ;
 int FBC_CONTROL ;
 scalar_t__ HAS_FBC (struct drm_i915_private*) ;
 int I915_WRITE (int ,int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int IS_G4X (struct drm_i915_private*) ;
 int i915_redisable_vga (struct drm_i915_private*) ;
 int intel_fbc_global_disable (struct drm_i915_private*) ;

__attribute__((used)) static void i915_restore_display(struct drm_i915_private *dev_priv)
{

 if (INTEL_GEN(dev_priv) <= 4)
  I915_WRITE(DSPARB, dev_priv->regfile.saveDSPARB);


 intel_fbc_global_disable(dev_priv);


 if (HAS_FBC(dev_priv) && INTEL_GEN(dev_priv) <= 4 && !IS_G4X(dev_priv))
  I915_WRITE(FBC_CONTROL, dev_priv->regfile.saveFBC_CONTROL);

 i915_redisable_vga(dev_priv);
}
