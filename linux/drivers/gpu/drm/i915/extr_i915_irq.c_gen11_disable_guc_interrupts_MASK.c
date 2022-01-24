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
struct TYPE_2__ {int enabled; } ;
struct intel_guc {TYPE_1__ interrupts; } ;
struct intel_gt {int /*<<< orphan*/  i915; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN11_GUC_SG_INTR_ENABLE ; 
 int /*<<< orphan*/  GEN11_GUC_SG_INTR_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct intel_guc*) ; 
 struct intel_gt* FUNC1 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct intel_guc *guc)
{
	struct intel_gt *gt = FUNC1(guc);

	FUNC4(&gt->irq_lock);
	guc->interrupts.enabled = false;

	FUNC3(gt->uncore, GEN11_GUC_SG_INTR_MASK, ~0);
	FUNC3(gt->uncore, GEN11_GUC_SG_INTR_ENABLE, 0);

	FUNC5(&gt->irq_lock);
	FUNC2(gt->i915);

	FUNC0(guc);
}