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
struct TYPE_3__ {int enabled; } ;
struct intel_guc {TYPE_1__ interrupts; } ;
struct intel_gt {TYPE_2__* i915; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  pm_guc_events; } ;
struct TYPE_4__ {int /*<<< orphan*/  runtime_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_gt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_guc*) ; 
 struct intel_gt* FUNC3 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct intel_guc *guc)
{
	struct intel_gt *gt = FUNC3(guc);

	FUNC0(&gt->i915->runtime_pm);

	FUNC5(&gt->irq_lock);
	guc->interrupts.enabled = false;

	FUNC1(gt, gt->pm_guc_events);

	FUNC6(&gt->irq_lock);
	FUNC4(gt->i915);

	FUNC2(guc);
}