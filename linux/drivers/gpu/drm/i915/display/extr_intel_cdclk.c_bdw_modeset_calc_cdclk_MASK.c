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
struct TYPE_3__ {int cdclk; void* voltage_level; } ;
struct TYPE_4__ {int force_min_cdclk; TYPE_1__ logical; TYPE_1__ actual; } ;
struct intel_atomic_state {TYPE_2__ cdclk; int /*<<< orphan*/  active_crtcs; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (struct intel_atomic_state*) ; 

__attribute__((used)) static int FUNC3(struct intel_atomic_state *state)
{
	int min_cdclk, cdclk;

	min_cdclk = FUNC2(state);
	if (min_cdclk < 0)
		return min_cdclk;

	/*
	 * FIXME should also account for plane ratio
	 * once 64bpp pixel formats are supported.
	 */
	cdclk = FUNC0(min_cdclk);

	state->cdclk.logical.cdclk = cdclk;
	state->cdclk.logical.voltage_level =
		FUNC1(cdclk);

	if (!state->active_crtcs) {
		cdclk = FUNC0(state->cdclk.force_min_cdclk);

		state->cdclk.actual.cdclk = cdclk;
		state->cdclk.actual.voltage_level =
			FUNC1(cdclk);
	} else {
		state->cdclk.actual = state->cdclk.logical;
	}

	return 0;
}