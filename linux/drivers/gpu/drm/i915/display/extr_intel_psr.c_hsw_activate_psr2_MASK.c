#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_dp {int dummy; } ;
struct TYPE_5__ {int idle_frames; int psr2_tp2_tp3_wakeup_time_us; } ;
struct TYPE_6__ {TYPE_2__ psr; } ;
struct TYPE_4__ {int sink_sync_latency; } ;
struct drm_i915_private {TYPE_3__ vbt; TYPE_1__ psr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDP_PSR2_CTL ; 
 int EDP_PSR2_ENABLE ; 
 int FUNC0 (int) ; 
 int EDP_PSR2_IDLE_FRAME_SHIFT ; 
 int EDP_PSR2_TP2_TIME_100us ; 
 int EDP_PSR2_TP2_TIME_2500us ; 
 int EDP_PSR2_TP2_TIME_500us ; 
 int EDP_PSR2_TP2_TIME_50us ; 
 int /*<<< orphan*/  EDP_PSR_CTL ; 
 int EDP_SU_TRACK_ENABLE ; 
 int EDP_Y_COORDINATE_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC4 (struct intel_dp*) ; 
 int FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC4(intel_dp);
	u32 val;

	/* Let's use 6 as the minimum to cover all known cases including the
	 * off-by-one issue that HW has in some cases.
	 */
	int idle_frames = FUNC5(6, dev_priv->vbt.psr.idle_frames);

	idle_frames = FUNC5(idle_frames, dev_priv->psr.sink_sync_latency + 1);
	val = idle_frames << EDP_PSR2_IDLE_FRAME_SHIFT;

	val |= EDP_PSR2_ENABLE | EDP_SU_TRACK_ENABLE;
	if (FUNC2(dev_priv) >= 10 || FUNC3(dev_priv))
		val |= EDP_Y_COORDINATE_ENABLE;

	val |= FUNC0(dev_priv->psr.sink_sync_latency + 1);

	if (dev_priv->vbt.psr.psr2_tp2_tp3_wakeup_time_us >= 0 &&
	    dev_priv->vbt.psr.psr2_tp2_tp3_wakeup_time_us <= 50)
		val |= EDP_PSR2_TP2_TIME_50us;
	else if (dev_priv->vbt.psr.psr2_tp2_tp3_wakeup_time_us <= 100)
		val |= EDP_PSR2_TP2_TIME_100us;
	else if (dev_priv->vbt.psr.psr2_tp2_tp3_wakeup_time_us <= 500)
		val |= EDP_PSR2_TP2_TIME_500us;
	else
		val |= EDP_PSR2_TP2_TIME_2500us;

	/*
	 * PSR2 HW is incorrectly using EDP_PSR_TP1_TP3_SEL and BSpec is
	 * recommending keep this bit unset while PSR2 is enabled.
	 */
	FUNC1(EDP_PSR_CTL, 0);

	FUNC1(EDP_PSR2_CTL, val);
}