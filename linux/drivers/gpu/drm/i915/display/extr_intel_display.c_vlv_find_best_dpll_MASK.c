#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int min; int max; } ;
struct TYPE_11__ {int p2_fast; int p2_slow; } ;
struct TYPE_10__ {int max; int min; } ;
struct TYPE_9__ {int min; int /*<<< orphan*/  max; } ;
struct intel_limit {TYPE_6__ m1; TYPE_5__ p2; TYPE_4__ p1; TYPE_3__ n; } ;
struct TYPE_7__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct TYPE_8__ {struct drm_device* dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct drm_device {int dummy; } ;
struct dpll {int n; int p1; int p2; int p; int m1; int /*<<< orphan*/  m2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct intel_limit const*,struct dpll*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpll*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 struct intel_crtc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int,struct dpll*,struct dpll*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (int,struct dpll*) ; 

__attribute__((used)) static bool
FUNC8(const struct intel_limit *limit,
		   struct intel_crtc_state *crtc_state,
		   int target, int refclk, struct dpll *match_clock,
		   struct dpll *best_clock)
{
	struct intel_crtc *crtc = FUNC5(crtc_state->base.crtc);
	struct drm_device *dev = crtc->base.dev;
	struct dpll clock;
	unsigned int bestppm = 1000000;
	/* min update 19.2 MHz */
	int max_n = FUNC3(limit->n.max, refclk / 19200);
	bool found = false;

	target *= 5; /* fast clock */

	FUNC2(best_clock, 0, sizeof(*best_clock));

	/* based on hardware requirement, prefer smaller n to precision */
	for (clock.n = limit->n.min; clock.n <= max_n; clock.n++) {
		for (clock.p1 = limit->p1.max; clock.p1 >= limit->p1.min; clock.p1--) {
			for (clock.p2 = limit->p2.p2_fast; clock.p2 >= limit->p2.p2_slow;
			     clock.p2 -= clock.p2 > 10 ? 2 : 1) {
				clock.p = clock.p1 * clock.p2;
				/* based on hardware requirement, prefer bigger m1,m2 values */
				for (clock.m1 = limit->m1.min; clock.m1 <= limit->m1.max; clock.m1++) {
					unsigned int ppm;

					clock.m2 = FUNC0(target * clock.p * clock.n,
								     refclk * clock.m1);

					FUNC7(refclk, &clock);

					if (!FUNC1(FUNC4(dev),
								limit,
								&clock))
						continue;

					if (!FUNC6(dev, target,
								&clock,
								best_clock,
								bestppm, &ppm))
						continue;

					*best_clock = clock;
					bestppm = ppm;
					found = true;
				}
			}
		}
	}

	return found;
}