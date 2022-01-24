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
typedef  int u64 ;
struct TYPE_8__ {int p2_fast; int p2_slow; } ;
struct TYPE_7__ {int max; int min; } ;
struct intel_limit {TYPE_4__ p2; TYPE_3__ p1; } ;
struct TYPE_5__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct TYPE_6__ {struct drm_device* dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct drm_device {int dummy; } ;
struct dpll {int n; int m1; int p1; int p2; int p; int m2; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int,struct dpll*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct intel_limit const*,struct dpll*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpll*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 struct intel_crtc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,int,struct dpll*,struct dpll*,unsigned int,unsigned int*) ; 

__attribute__((used)) static bool
FUNC8(const struct intel_limit *limit,
		   struct intel_crtc_state *crtc_state,
		   int target, int refclk, struct dpll *match_clock,
		   struct dpll *best_clock)
{
	struct intel_crtc *crtc = FUNC6(crtc_state->base.crtc);
	struct drm_device *dev = crtc->base.dev;
	unsigned int best_error_ppm;
	struct dpll clock;
	u64 m2;
	int found = false;

	FUNC3(best_clock, 0, sizeof(*best_clock));
	best_error_ppm = 1000000;

	/*
	 * Based on hardware doc, the n always set to 1, and m1 always
	 * set to 2.  If requires to support 200Mhz refclk, we need to
	 * revisit this because n may not 1 anymore.
	 */
	clock.n = 1, clock.m1 = 2;
	target *= 5;	/* fast clock */

	for (clock.p1 = limit->p1.max; clock.p1 >= limit->p1.min; clock.p1--) {
		for (clock.p2 = limit->p2.p2_fast;
				clock.p2 >= limit->p2.p2_slow;
				clock.p2 -= clock.p2 > 10 ? 2 : 1) {
			unsigned int error_ppm;

			clock.p = clock.p1 * clock.p2;

			m2 = FUNC0(FUNC4(target, clock.p * clock.n) << 22,
						   refclk * clock.m1);

			if (m2 > INT_MAX/clock.m1)
				continue;

			clock.m2 = m2;

			FUNC1(refclk, &clock);

			if (!FUNC2(FUNC5(dev), limit, &clock))
				continue;

			if (!FUNC7(dev, target, &clock, best_clock,
						best_error_ppm, &error_ppm))
				continue;

			*best_clock = clock;
			best_error_ppm = error_ppm;
			found = true;
		}
	}

	return found;
}