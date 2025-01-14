
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct intel_dp {int dummy; } ;
struct TYPE_5__ {int idle_frames; int psr2_tp2_tp3_wakeup_time_us; } ;
struct TYPE_6__ {TYPE_2__ psr; } ;
struct TYPE_4__ {int sink_sync_latency; } ;
struct drm_i915_private {TYPE_3__ vbt; TYPE_1__ psr; } ;


 int EDP_PSR2_CTL ;
 int EDP_PSR2_ENABLE ;
 int EDP_PSR2_FRAME_BEFORE_SU (int) ;
 int EDP_PSR2_IDLE_FRAME_SHIFT ;
 int EDP_PSR2_TP2_TIME_100us ;
 int EDP_PSR2_TP2_TIME_2500us ;
 int EDP_PSR2_TP2_TIME_500us ;
 int EDP_PSR2_TP2_TIME_50us ;
 int EDP_PSR_CTL ;
 int EDP_SU_TRACK_ENABLE ;
 int EDP_Y_COORDINATE_ENABLE ;
 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int max (int,int) ;

__attribute__((used)) static void hsw_activate_psr2(struct intel_dp *intel_dp)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 u32 val;




 int idle_frames = max(6, dev_priv->vbt.psr.idle_frames);

 idle_frames = max(idle_frames, dev_priv->psr.sink_sync_latency + 1);
 val = idle_frames << EDP_PSR2_IDLE_FRAME_SHIFT;

 val |= EDP_PSR2_ENABLE | EDP_SU_TRACK_ENABLE;
 if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
  val |= EDP_Y_COORDINATE_ENABLE;

 val |= EDP_PSR2_FRAME_BEFORE_SU(dev_priv->psr.sink_sync_latency + 1);

 if (dev_priv->vbt.psr.psr2_tp2_tp3_wakeup_time_us >= 0 &&
     dev_priv->vbt.psr.psr2_tp2_tp3_wakeup_time_us <= 50)
  val |= EDP_PSR2_TP2_TIME_50us;
 else if (dev_priv->vbt.psr.psr2_tp2_tp3_wakeup_time_us <= 100)
  val |= EDP_PSR2_TP2_TIME_100us;
 else if (dev_priv->vbt.psr.psr2_tp2_tp3_wakeup_time_us <= 500)
  val |= EDP_PSR2_TP2_TIME_500us;
 else
  val |= EDP_PSR2_TP2_TIME_2500us;





 I915_WRITE(EDP_PSR_CTL, 0);

 I915_WRITE(EDP_PSR2_CTL, val);
}
