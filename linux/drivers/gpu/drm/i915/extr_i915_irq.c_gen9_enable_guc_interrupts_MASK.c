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
struct intel_gt {int pm_guc_events; int /*<<< orphan*/  irq_lock; TYPE_2__* i915; int /*<<< orphan*/  uncore; } ;
struct TYPE_4__ {int /*<<< orphan*/  runtime_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_gt*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct intel_gt* FUNC4 (struct intel_guc*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct intel_guc *guc)
{
	struct intel_gt *gt = FUNC4(guc);

	FUNC1(&gt->i915->runtime_pm);

	FUNC6(&gt->irq_lock);
	if (!guc->interrupts.enabled) {
		FUNC0(FUNC5(gt->uncore,
					       FUNC3(gt->i915)) &
			     gt->pm_guc_events);
		guc->interrupts.enabled = true;
		FUNC2(gt, gt->pm_guc_events);
	}
	FUNC7(&gt->irq_lock);
}