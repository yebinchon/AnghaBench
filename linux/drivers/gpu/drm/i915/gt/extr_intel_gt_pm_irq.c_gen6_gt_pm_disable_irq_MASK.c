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
typedef  int /*<<< orphan*/  u32 ;
struct intel_gt {int /*<<< orphan*/  pm_ier; int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_gt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_gt*) ; 

void FUNC3(struct intel_gt *gt, u32 disable_mask)
{
	FUNC1(&gt->irq_lock);

	gt->pm_ier &= ~disable_mask;
	FUNC0(gt, disable_mask);
	FUNC2(gt);
}