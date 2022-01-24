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
struct TYPE_3__ {int vco; int cdclk; void* voltage_level; } ;
struct TYPE_4__ {int force_min_cdclk; TYPE_1__ logical; TYPE_1__ actual; } ;
struct intel_atomic_state {TYPE_2__ cdclk; int /*<<< orphan*/  active_crtcs; } ;

/* Variables and functions */
 int FUNC0 (struct intel_atomic_state*) ; 
 int FUNC1 (int,int) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (struct intel_atomic_state*) ; 

__attribute__((used)) static int FUNC4(struct intel_atomic_state *state)
{
	int min_cdclk, cdclk, vco;

	min_cdclk = FUNC0(state);
	if (min_cdclk < 0)
		return min_cdclk;

	vco = FUNC3(state);

	/*
	 * FIXME should also account for plane ratio
	 * once 64bpp pixel formats are supported.
	 */
	cdclk = FUNC1(min_cdclk, vco);

	state->cdclk.logical.vco = vco;
	state->cdclk.logical.cdclk = cdclk;
	state->cdclk.logical.voltage_level =
		FUNC2(cdclk);

	if (!state->active_crtcs) {
		cdclk = FUNC1(state->cdclk.force_min_cdclk, vco);

		state->cdclk.actual.vco = vco;
		state->cdclk.actual.cdclk = cdclk;
		state->cdclk.actual.voltage_level =
			FUNC2(cdclk);
	} else {
		state->cdclk.actual = state->cdclk.logical;
	}

	return 0;
}