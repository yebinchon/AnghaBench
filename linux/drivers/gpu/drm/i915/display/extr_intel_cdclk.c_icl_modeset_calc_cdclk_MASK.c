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
struct TYPE_5__ {unsigned int ref; int vco; int cdclk; int /*<<< orphan*/  voltage_level; } ;
struct TYPE_6__ {int force_min_cdclk; TYPE_2__ logical; TYPE_2__ actual; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_atomic_state {TYPE_3__ cdclk; int /*<<< orphan*/  active_crtcs; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_atomic_state*) ; 
 int FUNC1 (int,unsigned int) ; 
 int FUNC2 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int) ; 
 int FUNC4 (struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct intel_atomic_state *state)
{
	struct drm_i915_private *dev_priv = FUNC6(state->base.dev);
	unsigned int ref = state->cdclk.logical.ref;
	int min_cdclk, cdclk, vco;

	min_cdclk = FUNC4(state);
	if (min_cdclk < 0)
		return min_cdclk;

	cdclk = FUNC1(min_cdclk, ref);
	vco = FUNC2(dev_priv, cdclk);

	state->cdclk.logical.vco = vco;
	state->cdclk.logical.cdclk = cdclk;
	state->cdclk.logical.voltage_level =
		FUNC5(FUNC3(dev_priv, cdclk),
		    FUNC0(state));

	if (!state->active_crtcs) {
		cdclk = FUNC1(state->cdclk.force_min_cdclk, ref);
		vco = FUNC2(dev_priv, cdclk);

		state->cdclk.actual.vco = vco;
		state->cdclk.actual.cdclk = cdclk;
		state->cdclk.actual.voltage_level =
			FUNC3(dev_priv, cdclk);
	} else {
		state->cdclk.actual = state->cdclk.logical;
	}

	return 0;
}