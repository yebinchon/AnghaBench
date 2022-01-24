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
struct qib_pportdata {int /*<<< orphan*/  sdma_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  qib_sdma_event_e00_go_hw_down ; 
 int /*<<< orphan*/  FUNC1 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct qib_pportdata *ppd)
{
	FUNC1(ppd, qib_sdma_event_e00_go_hw_down);

	/*
	 * This waits for the state machine to exit so it is not
	 * necessary to kill the sdma_sw_clean_up_task to make sure
	 * it is not running.
	 */
	FUNC2(&ppd->sdma_state);

	FUNC0(ppd);
}