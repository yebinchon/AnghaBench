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
struct hfi1_devdata {int num_sdma; int /*<<< orphan*/  sdma_unfreeze_count; int /*<<< orphan*/  sdma_unfreeze_wq; int /*<<< orphan*/ * per_sdma; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sdma_event_e81_hw_frozen ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(struct hfi1_devdata *dd)
{
	int i;
	int ret;

	/*
	 * Make sure all engines have moved out of the running state before
	 * continuing.
	 */
	ret = FUNC3(dd->sdma_unfreeze_wq,
				       FUNC0(&dd->sdma_unfreeze_count) <=
				       0);
	/* interrupted or count is negative, then unloading - just exit */
	if (ret || FUNC0(&dd->sdma_unfreeze_count) < 0)
		return;

	/* set up the count for the next wait */
	FUNC1(&dd->sdma_unfreeze_count, dd->num_sdma);

	/* tell all engines that the SPC is frozen, they can start cleaning */
	for (i = 0; i < dd->num_sdma; i++)
		FUNC2(&dd->per_sdma[i], sdma_event_e81_hw_frozen);

	/*
	 * Wait for everyone to finish software clean before exiting.  The
	 * software clean will read engine CSRs, so must be completed before
	 * the next step, which will clear the engine CSRs.
	 */
	(void)FUNC3(dd->sdma_unfreeze_wq,
				FUNC0(&dd->sdma_unfreeze_count) <= 0);
	/* no need to check results - done no matter what */
}