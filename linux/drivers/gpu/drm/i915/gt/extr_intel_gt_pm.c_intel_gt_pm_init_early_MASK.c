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
struct intel_gt {int /*<<< orphan*/  pm_notifications; TYPE_1__* i915; int /*<<< orphan*/  wakeref; } ;
struct TYPE_2__ {int /*<<< orphan*/  runtime_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wf_ops ; 

void FUNC2(struct intel_gt *gt)
{
	FUNC1(&gt->wakeref, &gt->i915->runtime_pm, &wf_ops);

	FUNC0(&gt->pm_notifications);
}