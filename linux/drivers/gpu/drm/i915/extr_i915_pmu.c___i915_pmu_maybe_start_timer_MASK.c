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
struct i915_pmu {int timer_enabled; int /*<<< orphan*/  timer; int /*<<< orphan*/  timer_last; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL_PINNED ; 
 int /*<<< orphan*/  PERIOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct i915_pmu*,int) ; 

__attribute__((used)) static void FUNC4(struct i915_pmu *pmu)
{
	if (!pmu->timer_enabled && FUNC3(pmu, true)) {
		pmu->timer_enabled = true;
		pmu->timer_last = FUNC1();
		FUNC0(&pmu->timer,
				       FUNC2(PERIOD), 0,
				       HRTIMER_MODE_REL_PINNED);
	}
}