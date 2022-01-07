
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* saveFBC_CONTROL; void* saveDSPARB; } ;
struct drm_i915_private {TYPE_1__ regfile; } ;


 int DSPARB ;
 int FBC_CONTROL ;
 scalar_t__ HAS_FBC (struct drm_i915_private*) ;
 void* I915_READ (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int IS_G4X (struct drm_i915_private*) ;

__attribute__((used)) static void i915_save_display(struct drm_i915_private *dev_priv)
{

 if (INTEL_GEN(dev_priv) <= 4)
  dev_priv->regfile.saveDSPARB = I915_READ(DSPARB);


 if (HAS_FBC(dev_priv) && INTEL_GEN(dev_priv) <= 4 && !IS_G4X(dev_priv))
  dev_priv->regfile.saveFBC_CONTROL = I915_READ(FBC_CONTROL);
}
