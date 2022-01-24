#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct intel_dp {TYPE_3__* attached_connector; } ;
struct intel_crtc_state {int /*<<< orphan*/  has_drrs; } ;
struct TYPE_8__ {scalar_t__ refresh_rate_type; int /*<<< orphan*/  work; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * dp; } ;
struct drm_i915_private {TYPE_4__ drrs; } ;
struct TYPE_6__ {TYPE_1__* fixed_mode; } ;
struct TYPE_7__ {TYPE_2__ panel; } ;
struct TYPE_5__ {int /*<<< orphan*/  vrefresh; } ;

/* Variables and functions */
 scalar_t__ DRRS_LOW_RR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC1 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,struct intel_crtc_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct intel_dp *intel_dp,
			    const struct intel_crtc_state *old_crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC1(intel_dp);

	if (!old_crtc_state->has_drrs)
		return;

	FUNC3(&dev_priv->drrs.mutex);
	if (!dev_priv->drrs.dp) {
		FUNC4(&dev_priv->drrs.mutex);
		return;
	}

	if (dev_priv->drrs.refresh_rate_type == DRRS_LOW_RR)
		FUNC2(dev_priv, old_crtc_state,
			intel_dp->attached_connector->panel.fixed_mode->vrefresh);

	dev_priv->drrs.dp = NULL;
	FUNC4(&dev_priv->drrs.mutex);

	FUNC0(&dev_priv->drrs.work);
}