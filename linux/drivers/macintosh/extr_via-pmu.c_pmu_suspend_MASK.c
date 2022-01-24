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

/* Variables and functions */
 int CB1_INT ; 
 size_t IER ; 
 int IER_CLR ; 
 int adb_int_pending ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ gpio_irq ; 
 scalar_t__ idle ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pmu_lock ; 
 scalar_t__ pmu_state ; 
 int pmu_suspended ; 
 scalar_t__ req_awaiting_reply ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ uninitialized ; 
 int /*<<< orphan*/ * via1 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5(void)
{
	unsigned long flags;

	if (pmu_state == uninitialized)
		return;
	
	FUNC2(&pmu_lock, flags);
	pmu_suspended++;
	if (pmu_suspended > 1) {
		FUNC3(&pmu_lock, flags);
		return;
	}

	do {
		FUNC3(&pmu_lock, flags);
		if (req_awaiting_reply)
			adb_int_pending = 1;
		FUNC4(0, NULL);
		FUNC2(&pmu_lock, flags);
		if (!adb_int_pending && pmu_state == idle && !req_awaiting_reply) {
			if (gpio_irq >= 0)
				FUNC0(gpio_irq);
			FUNC1(&via1[IER], CB1_INT | IER_CLR);
			FUNC3(&pmu_lock, flags);
			break;
		}
	} while (1);
}