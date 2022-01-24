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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int /*<<< orphan*/  has_psr; TYPE_1__ base; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  psr2_enabled; int /*<<< orphan*/  enabled; } ;
struct drm_i915_private {int /*<<< orphan*/  uncore; TYPE_3__ psr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDP_PSR_STATUS ; 
 int /*<<< orphan*/  EDP_PSR_STATUS_STATE_IDLE ; 
 int /*<<< orphan*/  EDP_PSR_STATUS_STATE_MASK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(const struct intel_crtc_state *new_crtc_state,
			    u32 *out_value)
{
	struct intel_crtc *crtc = FUNC3(new_crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC2(crtc->base.dev);

	if (!dev_priv->psr.enabled || !new_crtc_state->has_psr)
		return 0;

	/* FIXME: Update this for PSR2 if we need to wait for idle */
	if (FUNC0(dev_priv->psr.psr2_enabled))
		return 0;

	/*
	 * From bspec: Panel Self Refresh (BDW+)
	 * Max. time for PSR to idle = Inverse of the refresh rate + 6 ms of
	 * exit training time + 1.5 ms of aux channel handshake. 50 ms is
	 * defensive enough to cover everything.
	 */

	return FUNC1(&dev_priv->uncore, EDP_PSR_STATUS,
					 EDP_PSR_STATUS_STATE_MASK,
					 EDP_PSR_STATUS_STATE_IDLE, 2, 50,
					 out_value);
}