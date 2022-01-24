#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  interactive; } ;
struct intel_rps {TYPE_3__ power; } ;
struct TYPE_4__ {int /*<<< orphan*/  awake; } ;
struct TYPE_5__ {struct intel_rps rps; } ;
struct drm_i915_private {TYPE_1__ gt; TYPE_2__ gt_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HIGH_POWER ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

void FUNC6(struct drm_i915_private *i915, bool interactive)
{
	struct intel_rps *rps = &i915->gt_pm.rps;

	if (FUNC1(i915) < 6)
		return;

	FUNC3(&rps->power.mutex);
	if (interactive) {
		if (!rps->power.interactive++ && FUNC2(i915->gt.awake))
			FUNC5(i915, HIGH_POWER);
	} else {
		FUNC0(!rps->power.interactive);
		rps->power.interactive--;
	}
	FUNC4(&rps->power.mutex);
}