#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  ctrl1; } ;
struct intel_crtc_state {int port_clock; TYPE_1__ dpll_hw_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPLL_CTRL1_LINK_RATE_1080 ; 
 int /*<<< orphan*/  DPLL_CTRL1_LINK_RATE_1350 ; 
 int /*<<< orphan*/  DPLL_CTRL1_LINK_RATE_1620 ; 
 int /*<<< orphan*/  DPLL_CTRL1_LINK_RATE_2160 ; 
 int /*<<< orphan*/  DPLL_CTRL1_LINK_RATE_2700 ; 
 int /*<<< orphan*/  DPLL_CTRL1_LINK_RATE_810 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC3(struct intel_crtc_state *crtc_state)
{
	u32 ctrl1;

	/*
	 * See comment in intel_dpll_hw_state to understand why we always use 0
	 * as the DPLL id in this function.
	 */
	ctrl1 = FUNC1(0);
	switch (crtc_state->port_clock / 2) {
	case 81000:
		ctrl1 |= FUNC0(DPLL_CTRL1_LINK_RATE_810, 0);
		break;
	case 135000:
		ctrl1 |= FUNC0(DPLL_CTRL1_LINK_RATE_1350, 0);
		break;
	case 270000:
		ctrl1 |= FUNC0(DPLL_CTRL1_LINK_RATE_2700, 0);
		break;
		/* eDP 1.4 rates */
	case 162000:
		ctrl1 |= FUNC0(DPLL_CTRL1_LINK_RATE_1620, 0);
		break;
	case 108000:
		ctrl1 |= FUNC0(DPLL_CTRL1_LINK_RATE_1080, 0);
		break;
	case 216000:
		ctrl1 |= FUNC0(DPLL_CTRL1_LINK_RATE_2160, 0);
		break;
	}

	FUNC2(&crtc_state->dpll_hw_state, 0,
	       sizeof(crtc_state->dpll_hw_state));

	crtc_state->dpll_hw_state.ctrl1 = ctrl1;

	return true;
}