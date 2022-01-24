#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct intel_gt {int gt_imr; int /*<<< orphan*/  uncore; int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GTIMR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct intel_gt *gt,
			       u32 interrupt_mask,
			       u32 enabled_irq_mask)
{
	FUNC2(&gt->irq_lock);

	FUNC0(enabled_irq_mask & ~interrupt_mask);

	gt->gt_imr &= ~interrupt_mask;
	gt->gt_imr |= (~enabled_irq_mask & interrupt_mask);
	FUNC1(gt->uncore, GTIMR, gt->gt_imr);
}