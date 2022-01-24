#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_dp {int dummy; } ;
struct intel_crtc_state {int /*<<< orphan*/  has_drrs; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; struct intel_dp* dp; scalar_t__ busy_frontbuffer_bits; } ;
struct TYPE_3__ {scalar_t__ enabled; } ;
struct drm_i915_private {TYPE_2__ drrs; TYPE_1__ psr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct drm_i915_private* FUNC1 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct intel_dp *intel_dp,
			   const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC1(intel_dp);

	if (!crtc_state->has_drrs) {
		FUNC0("Panel doesn't support DRRS\n");
		return;
	}

	if (dev_priv->psr.enabled) {
		FUNC0("PSR enabled. Not enabling DRRS.\n");
		return;
	}

	FUNC2(&dev_priv->drrs.mutex);
	if (dev_priv->drrs.dp) {
		FUNC0("DRRS already enabled\n");
		goto unlock;
	}

	dev_priv->drrs.busy_frontbuffer_bits = 0;

	dev_priv->drrs.dp = intel_dp;

unlock:
	FUNC3(&dev_priv->drrs.mutex);
}