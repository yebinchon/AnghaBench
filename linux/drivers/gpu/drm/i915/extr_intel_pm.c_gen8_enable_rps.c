
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_rps {int max_freq_softlimit; int min_freq_softlimit; int rp1_freq; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {int uncore; TYPE_1__ gt_pm; } ;


 int FORCEWAKE_ALL ;
 int GEN6_RC_VIDEO_FREQ ;
 int GEN6_RPNSWREQ ;
 int GEN6_RP_CONTROL ;
 int GEN6_RP_DOWN_EI ;
 int GEN6_RP_DOWN_IDLE_AVG ;
 int GEN6_RP_DOWN_THRESHOLD ;
 int GEN6_RP_DOWN_TIMEOUT ;
 int GEN6_RP_ENABLE ;
 int GEN6_RP_IDLE_HYSTERSIS ;
 int GEN6_RP_INTERRUPT_LIMITS ;
 int GEN6_RP_MEDIA_HW_NORMAL_MODE ;
 int GEN6_RP_MEDIA_IS_GFX ;
 int GEN6_RP_MEDIA_TURBO ;
 int GEN6_RP_UP_BUSY_AVG ;
 int GEN6_RP_UP_EI ;
 int GEN6_RP_UP_THRESHOLD ;
 int HSW_FREQUENCY (int ) ;
 int I915_WRITE (int ,int) ;
 int gen6_set_rps ;
 int intel_uncore_forcewake_get (int *,int ) ;
 int intel_uncore_forcewake_put (int *,int ) ;
 int reset_rps (struct drm_i915_private*,int ) ;

__attribute__((used)) static void gen8_enable_rps(struct drm_i915_private *dev_priv)
{
 struct intel_rps *rps = &dev_priv->gt_pm.rps;

 intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);


 I915_WRITE(GEN6_RPNSWREQ,
     HSW_FREQUENCY(rps->rp1_freq));
 I915_WRITE(GEN6_RC_VIDEO_FREQ,
     HSW_FREQUENCY(rps->rp1_freq));

 I915_WRITE(GEN6_RP_DOWN_TIMEOUT, 100000000 / 128);


 I915_WRITE(GEN6_RP_INTERRUPT_LIMITS,
     rps->max_freq_softlimit << 24 |
     rps->min_freq_softlimit << 16);

 I915_WRITE(GEN6_RP_UP_THRESHOLD, 7600000 / 128);
 I915_WRITE(GEN6_RP_DOWN_THRESHOLD, 31300000 / 128);
 I915_WRITE(GEN6_RP_UP_EI, 66000);
 I915_WRITE(GEN6_RP_DOWN_EI, 350000);

 I915_WRITE(GEN6_RP_IDLE_HYSTERSIS, 10);


 I915_WRITE(GEN6_RP_CONTROL,
     GEN6_RP_MEDIA_TURBO |
     GEN6_RP_MEDIA_HW_NORMAL_MODE |
     GEN6_RP_MEDIA_IS_GFX |
     GEN6_RP_ENABLE |
     GEN6_RP_UP_BUSY_AVG |
     GEN6_RP_DOWN_IDLE_AVG);

 reset_rps(dev_priv, gen6_set_rps);

 intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
}
