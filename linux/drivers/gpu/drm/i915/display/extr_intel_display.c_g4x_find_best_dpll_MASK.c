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
struct TYPE_12__ {scalar_t__ max; scalar_t__ min; } ;
struct TYPE_11__ {scalar_t__ max; scalar_t__ min; } ;
struct TYPE_10__ {scalar_t__ max; scalar_t__ min; } ;
struct TYPE_9__ {int max; int min; } ;
struct intel_limit {TYPE_6__ p1; TYPE_5__ m2; TYPE_4__ m1; TYPE_3__ n; } ;
struct TYPE_8__ {TYPE_1__* crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct drm_device {int dummy; } ;
struct dpll {int n; scalar_t__ m1; scalar_t__ m2; scalar_t__ p1; scalar_t__ dot; int /*<<< orphan*/  p2; } ;
struct TYPE_7__ {struct drm_device* dev; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,struct dpll*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_limit const*,struct intel_crtc_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct intel_limit const*,struct dpll*) ; 
 int /*<<< orphan*/  FUNC4 (struct dpll*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 

__attribute__((used)) static bool
FUNC6(const struct intel_limit *limit,
		   struct intel_crtc_state *crtc_state,
		   int target, int refclk, struct dpll *match_clock,
		   struct dpll *best_clock)
{
	struct drm_device *dev = crtc_state->base.crtc->dev;
	struct dpll clock;
	int max_n;
	bool found = false;
	/* approximately equals target * 0.00585 */
	int err_most = (target >> 8) + (target >> 9);

	FUNC4(best_clock, 0, sizeof(*best_clock));

	clock.p2 = FUNC2(limit, crtc_state, target);

	max_n = limit->n.max;
	/* based on hardware requirement, prefer smaller n to precision */
	for (clock.n = limit->n.min; clock.n <= max_n; clock.n++) {
		/* based on hardware requirement, prefere larger m1,m2 */
		for (clock.m1 = limit->m1.max;
		     clock.m1 >= limit->m1.min; clock.m1--) {
			for (clock.m2 = limit->m2.max;
			     clock.m2 >= limit->m2.min; clock.m2--) {
				for (clock.p1 = limit->p1.max;
				     clock.p1 >= limit->p1.min; clock.p1--) {
					int this_err;

					FUNC1(refclk, &clock);
					if (!FUNC3(FUNC5(dev),
								limit,
								&clock))
						continue;

					this_err = FUNC0(clock.dot - target);
					if (this_err < err_most) {
						*best_clock = clock;
						err_most = this_err;
						max_n = clock.n;
						found = true;
					}
				}
			}
		}
	}
	return found;
}