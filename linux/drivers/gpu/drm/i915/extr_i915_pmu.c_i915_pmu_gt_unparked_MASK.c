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
struct TYPE_2__ {int /*<<< orphan*/  event_init; } ;
struct i915_pmu {int /*<<< orphan*/  lock; TYPE_1__ base; } ;
struct drm_i915_private {struct i915_pmu pmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i915_pmu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct drm_i915_private *i915)
{
	struct i915_pmu *pmu = &i915->pmu;

	if (!pmu->base.event_init)
		return;

	FUNC1(&pmu->lock);
	/*
	 * Re-enable sampling timer when GPU goes active.
	 */
	FUNC0(pmu);
	FUNC2(&pmu->lock);
}