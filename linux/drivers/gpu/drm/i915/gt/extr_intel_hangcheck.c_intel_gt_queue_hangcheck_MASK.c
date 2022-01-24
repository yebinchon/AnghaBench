#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  work; } ;
struct intel_gt {TYPE_1__ hangcheck; } ;
struct TYPE_4__ {int /*<<< orphan*/  enable_hangcheck; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_I915_HANGCHECK_JIFFIES ; 
 TYPE_2__ i915_modparams ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_long_wq ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(struct intel_gt *gt)
{
	unsigned long delay;

	if (FUNC2(!i915_modparams.enable_hangcheck))
		return;

	/*
	 * Don't continually defer the hangcheck so that it is always run at
	 * least once after work has been scheduled on any ring. Otherwise,
	 * we will ignore a hung ring if a second ring is kept busy.
	 */

	delay = FUNC1(DRM_I915_HANGCHECK_JIFFIES);
	FUNC0(system_long_wq, &gt->hangcheck.work, delay);
}