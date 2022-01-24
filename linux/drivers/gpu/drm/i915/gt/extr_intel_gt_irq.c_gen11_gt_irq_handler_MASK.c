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
struct intel_gt {int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int const FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_gt*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct intel_gt *gt, const u32 master_ctl)
{
	unsigned int bank;

	FUNC2(&gt->irq_lock);

	for (bank = 0; bank < 2; bank++) {
		if (master_ctl & FUNC0(bank))
			FUNC1(gt, bank);
	}

	FUNC3(&gt->irq_lock);
}