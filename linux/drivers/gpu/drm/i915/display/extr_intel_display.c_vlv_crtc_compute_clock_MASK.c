#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct intel_limit {int dummy; } ;
struct intel_crtc_state {int /*<<< orphan*/  dpll; int /*<<< orphan*/  port_clock; int /*<<< orphan*/  clock_set; int /*<<< orphan*/  dpll_hw_state; } ;
struct intel_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 struct intel_limit intel_limits_vlv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_limit const*,struct intel_crtc_state*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct intel_crtc *crtc,
				  struct intel_crtc_state *crtc_state)
{
	int refclk = 100000;
	const struct intel_limit *limit = &intel_limits_vlv;

	FUNC1(&crtc_state->dpll_hw_state, 0,
	       sizeof(crtc_state->dpll_hw_state));

	if (!crtc_state->clock_set &&
	    !FUNC3(limit, crtc_state, crtc_state->port_clock,
				refclk, NULL, &crtc_state->dpll)) {
		FUNC0("Couldn't find PLL settings for mode!\n");
		return -EINVAL;
	}

	FUNC2(crtc, crtc_state);

	return 0;
}