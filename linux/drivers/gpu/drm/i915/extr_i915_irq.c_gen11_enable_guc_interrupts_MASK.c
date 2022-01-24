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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int enabled; } ;
struct intel_guc {TYPE_1__ interrupts; } ;
struct intel_gt {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENGINE1_MASK ; 
 int /*<<< orphan*/  GEN11_GUC ; 
 int /*<<< orphan*/  GEN11_GUC_SG_INTR_ENABLE ; 
 int /*<<< orphan*/  GEN11_GUC_SG_INTR_MASK ; 
 int /*<<< orphan*/  GUC_INTR_GUC2HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_gt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct intel_gt* FUNC3 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct intel_guc *guc)
{
	struct intel_gt *gt = FUNC3(guc);

	FUNC5(&gt->irq_lock);
	if (!guc->interrupts.enabled) {
		u32 events = FUNC0(ENGINE1_MASK, GUC_INTR_GUC2HOST);

		FUNC1(FUNC2(gt, 0, GEN11_GUC));
		FUNC4(gt->uncore, GEN11_GUC_SG_INTR_ENABLE, events);
		FUNC4(gt->uncore, GEN11_GUC_SG_INTR_MASK, ~events);
		guc->interrupts.enabled = true;
	}
	FUNC6(&gt->irq_lock);
}