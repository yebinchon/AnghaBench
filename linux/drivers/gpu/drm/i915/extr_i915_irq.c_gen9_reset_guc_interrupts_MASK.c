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
struct intel_guc {int dummy; } ;
struct intel_gt {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  pm_guc_events; TYPE_1__* i915; } ;
struct TYPE_2__ {int /*<<< orphan*/  runtime_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_gt*,int /*<<< orphan*/ ) ; 
 struct intel_gt* FUNC2 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct intel_guc *guc)
{
	struct intel_gt *gt = FUNC2(guc);

	FUNC0(&gt->i915->runtime_pm);

	FUNC3(&gt->irq_lock);
	FUNC1(gt, gt->pm_guc_events);
	FUNC4(&gt->irq_lock);
}