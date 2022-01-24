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
struct TYPE_2__ {int /*<<< orphan*/ * event_init; } ;
struct i915_pmu {TYPE_1__ base; int /*<<< orphan*/  timer; int /*<<< orphan*/  enable; } ;
struct drm_i915_private {struct i915_pmu pmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_pmu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_pmu*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(struct drm_i915_private *i915)
{
	struct i915_pmu *pmu = &i915->pmu;

	if (!pmu->base.event_init)
		return;

	FUNC0(pmu->enable);

	FUNC2(&pmu->timer);

	FUNC3(pmu);

	FUNC4(&pmu->base);
	pmu->base.event_init = NULL;
	FUNC1(pmu);
}