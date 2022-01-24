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
struct TYPE_4__ {scalar_t__ color_mgmt_changed; int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {scalar_t__ gamma_mode; int /*<<< orphan*/  ips_enabled; scalar_t__ update_pipe; TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ GAMMA_MODE_MODE_SPLIT ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct intel_crtc_state const*) ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(const struct intel_crtc_state *old_crtc_state,
				       const struct intel_crtc_state *new_crtc_state)
{
	struct intel_crtc *crtc = FUNC3(new_crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC2(crtc->base.dev);

	if (!old_crtc_state->ips_enabled)
		return false;

	if (FUNC1(new_crtc_state))
		return true;

	/*
	 * Workaround : Do not read or write the pipe palette/gamma data while
	 * GAMMA_MODE is configured for split gamma and IPS_CTL has IPS enabled.
	 *
	 * Disable IPS before we program the LUT.
	 */
	if (FUNC0(dev_priv) &&
	    (new_crtc_state->base.color_mgmt_changed ||
	     new_crtc_state->update_pipe) &&
	    new_crtc_state->gamma_mode == GAMMA_MODE_MODE_SPLIT)
		return true;

	return !new_crtc_state->ips_enabled;
}