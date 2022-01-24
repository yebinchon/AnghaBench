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
struct intel_crtc_state {int /*<<< orphan*/  port_clock; } ;
struct dpll {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct intel_limit const*,struct intel_crtc_state*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct dpll*) ; 
 struct intel_limit intel_limits_bxt ; 

bool FUNC1(struct intel_crtc_state *crtc_state,
			struct dpll *best_clock)
{
	int refclk = 100000;
	const struct intel_limit *limit = &intel_limits_bxt;

	return FUNC0(limit, crtc_state,
				  crtc_state->port_clock, refclk,
				  NULL, best_clock);
}