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
struct TYPE_2__ {int /*<<< orphan*/  ready_for_suspend_event; int /*<<< orphan*/  nr_chan_close_on_suspend; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ vmbus_connection ; 

__attribute__((used)) static void FUNC2(void)
{
	/*
	 * If all the sub-channels or hv_sock channels have been cleaned up,
	 * then it's safe to suspend.
	 */
	if (FUNC0(&vmbus_connection.nr_chan_close_on_suspend))
		FUNC1(&vmbus_connection.ready_for_suspend_event);
}