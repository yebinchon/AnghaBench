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
struct TYPE_5__ {int vco; int cdclk; void* voltage_level; } ;
struct TYPE_6__ {int force_min_cdclk; TYPE_2__ logical; TYPE_2__ actual; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_atomic_state {TYPE_3__ cdclk; int /*<<< orphan*/  active_crtcs; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (struct drm_i915_private*,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (struct drm_i915_private*,int) ; 
 int FUNC6 (struct intel_atomic_state*) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct intel_atomic_state *state)
{
	struct drm_i915_private *dev_priv = FUNC7(state->base.dev);
	int min_cdclk, cdclk, vco;

	min_cdclk = FUNC6(state);
	if (min_cdclk < 0)
		return min_cdclk;

	if (FUNC0(dev_priv)) {
		cdclk = FUNC4(min_cdclk);
		vco = FUNC5(dev_priv, cdclk);
	} else {
		cdclk = FUNC1(min_cdclk);
		vco = FUNC3(dev_priv, cdclk);
	}

	state->cdclk.logical.vco = vco;
	state->cdclk.logical.cdclk = cdclk;
	state->cdclk.logical.voltage_level =
		FUNC2(cdclk);

	if (!state->active_crtcs) {
		if (FUNC0(dev_priv)) {
			cdclk = FUNC4(state->cdclk.force_min_cdclk);
			vco = FUNC5(dev_priv, cdclk);
		} else {
			cdclk = FUNC1(state->cdclk.force_min_cdclk);
			vco = FUNC3(dev_priv, cdclk);
		}

		state->cdclk.actual.vco = vco;
		state->cdclk.actual.cdclk = cdclk;
		state->cdclk.actual.voltage_level =
			FUNC2(cdclk);
	} else {
		state->cdclk.actual = state->cdclk.logical;
	}

	return 0;
}