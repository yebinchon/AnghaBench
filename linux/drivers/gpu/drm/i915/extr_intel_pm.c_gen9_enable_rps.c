
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rp1_freq; } ;
struct TYPE_4__ {TYPE_1__ rps; } ;
struct drm_i915_private {int uncore; TYPE_2__ gt_pm; } ;


 int FORCEWAKE_ALL ;
 int GEN6_RC_VIDEO_FREQ ;
 int GEN6_RP_DOWN_TIMEOUT ;
 int GEN6_RP_IDLE_HYSTERSIS ;
 int GEN9_FREQUENCY (int ) ;
 int GT_INTERVAL_FROM_US (struct drm_i915_private*,int) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int gen6_set_rps ;
 int intel_uncore_forcewake_get (int *,int ) ;
 int intel_uncore_forcewake_put (int *,int ) ;
 int reset_rps (struct drm_i915_private*,int ) ;

__attribute__((used)) static void gen9_enable_rps(struct drm_i915_private *dev_priv)
{
 intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);


 if (IS_GEN(dev_priv, 9))
  I915_WRITE(GEN6_RC_VIDEO_FREQ,
   GEN9_FREQUENCY(dev_priv->gt_pm.rps.rp1_freq));


 I915_WRITE(GEN6_RP_DOWN_TIMEOUT,
  GT_INTERVAL_FROM_US(dev_priv, 1000000));

 I915_WRITE(GEN6_RP_IDLE_HYSTERSIS, 0xa);




 reset_rps(dev_priv, gen6_set_rps);

 intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
}
