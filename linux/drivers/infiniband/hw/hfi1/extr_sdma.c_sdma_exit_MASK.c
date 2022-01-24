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
struct sdma_engine {int /*<<< orphan*/  state; int /*<<< orphan*/  err_progress_check_timer; int /*<<< orphan*/  this_idx; int /*<<< orphan*/  dmawait; } ;
struct hfi1_devdata {unsigned int num_sdma; struct sdma_engine* per_sdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sdma_event_e00_go_hw_down ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sdma_engine*,int /*<<< orphan*/ ) ; 

void FUNC5(struct hfi1_devdata *dd)
{
	unsigned this_idx;
	struct sdma_engine *sde;

	for (this_idx = 0; dd->per_sdma && this_idx < dd->num_sdma;
			++this_idx) {
		sde = &dd->per_sdma[this_idx];
		if (!FUNC2(&sde->dmawait))
			FUNC0(dd, "sde %u: dmawait list not empty!\n",
				   sde->this_idx);
		FUNC4(sde, sdma_event_e00_go_hw_down);

		FUNC1(&sde->err_progress_check_timer);

		/*
		 * This waits for the state machine to exit so it is not
		 * necessary to kill the sdma_sw_clean_up_task to make sure
		 * it is not running.
		 */
		FUNC3(&sde->state);
	}
}