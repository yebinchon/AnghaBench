
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int uncore; } ;


 int FORCEWAKE_ALL ;
 int GEN6_RP_DOWN_TIMEOUT ;
 int GEN6_RP_IDLE_HYSTERSIS ;
 int I915_WRITE (int ,int) ;
 int gen6_set_rps ;
 int intel_uncore_forcewake_get (int *,int ) ;
 int intel_uncore_forcewake_put (int *,int ) ;
 int reset_rps (struct drm_i915_private*,int ) ;

__attribute__((used)) static void gen6_enable_rps(struct drm_i915_private *dev_priv)
{






 intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);


 I915_WRITE(GEN6_RP_DOWN_TIMEOUT, 50000);
 I915_WRITE(GEN6_RP_IDLE_HYSTERSIS, 10);

 reset_rps(dev_priv, gen6_set_rps);

 intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
}
