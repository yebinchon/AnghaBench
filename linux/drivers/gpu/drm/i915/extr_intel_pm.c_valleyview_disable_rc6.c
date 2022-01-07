
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int uncore; } ;


 int FORCEWAKE_ALL ;
 int GEN6_RC_CONTROL ;
 int I915_WRITE (int ,int ) ;
 int intel_uncore_forcewake_get (int *,int ) ;
 int intel_uncore_forcewake_put (int *,int ) ;

__attribute__((used)) static void valleyview_disable_rc6(struct drm_i915_private *dev_priv)
{


 intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);

 I915_WRITE(GEN6_RC_CONTROL, 0);

 intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
}
