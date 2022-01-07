
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int mode; int up_threshold; int down_threshold; int mutex; } ;
struct intel_rps {TYPE_2__ power; } ;
struct TYPE_3__ {struct intel_rps rps; } ;
struct drm_i915_private {TYPE_1__ gt_pm; } ;



 int GEN6_RP_CONTROL ;
 int GEN6_RP_DOWN_EI ;
 int GEN6_RP_DOWN_IDLE_AVG ;
 int GEN6_RP_DOWN_THRESHOLD ;
 int GEN6_RP_ENABLE ;
 int GEN6_RP_MEDIA_HW_NORMAL_MODE ;
 int GEN6_RP_MEDIA_IS_GFX ;
 int GEN6_RP_MEDIA_TURBO ;
 int GEN6_RP_UP_BUSY_AVG ;
 int GEN6_RP_UP_EI ;
 int GEN6_RP_UP_THRESHOLD ;
 int GT_INTERVAL_FROM_US (struct drm_i915_private*,int) ;

 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;

 int lockdep_assert_held (int *) ;

__attribute__((used)) static void rps_set_power(struct drm_i915_private *dev_priv, int new_power)
{
 struct intel_rps *rps = &dev_priv->gt_pm.rps;
 u32 threshold_up = 0, threshold_down = 0;
 u32 ei_up = 0, ei_down = 0;

 lockdep_assert_held(&rps->power.mutex);

 if (new_power == rps->power.mode)
  return;


 switch (new_power) {
 case 128:

  ei_up = 16000;
  threshold_up = 95;


  ei_down = 32000;
  threshold_down = 85;
  break;

 case 130:

  ei_up = 13000;
  threshold_up = 90;


  ei_down = 32000;
  threshold_down = 75;
  break;

 case 129:

  ei_up = 10000;
  threshold_up = 85;


  ei_down = 32000;
  threshold_down = 60;
  break;
 }




 if (IS_VALLEYVIEW(dev_priv))
  goto skip_hw_write;

 I915_WRITE(GEN6_RP_UP_EI,
     GT_INTERVAL_FROM_US(dev_priv, ei_up));
 I915_WRITE(GEN6_RP_UP_THRESHOLD,
     GT_INTERVAL_FROM_US(dev_priv,
           ei_up * threshold_up / 100));

 I915_WRITE(GEN6_RP_DOWN_EI,
     GT_INTERVAL_FROM_US(dev_priv, ei_down));
 I915_WRITE(GEN6_RP_DOWN_THRESHOLD,
     GT_INTERVAL_FROM_US(dev_priv,
           ei_down * threshold_down / 100));

 I915_WRITE(GEN6_RP_CONTROL,
     (INTEL_GEN(dev_priv) > 9 ? 0 : GEN6_RP_MEDIA_TURBO) |
     GEN6_RP_MEDIA_HW_NORMAL_MODE |
     GEN6_RP_MEDIA_IS_GFX |
     GEN6_RP_ENABLE |
     GEN6_RP_UP_BUSY_AVG |
     GEN6_RP_DOWN_IDLE_AVG);

skip_hw_write:
 rps->power.mode = new_power;
 rps->power.up_threshold = threshold_up;
 rps->power.down_threshold = threshold_down;
}
