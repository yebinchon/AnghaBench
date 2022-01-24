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
struct TYPE_2__ {int /*<<< orphan*/ ** monitor_pages; int /*<<< orphan*/ * int_page; scalar_t__ work_queue; scalar_t__ handle_primary_chan_wq; scalar_t__ handle_sub_chan_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_1__ vmbus_connection ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(void)
{
	/*
	 * First send the unload request to the host.
	 */
	FUNC2(false);

	if (vmbus_connection.handle_sub_chan_wq)
		FUNC0(vmbus_connection.handle_sub_chan_wq);

	if (vmbus_connection.handle_primary_chan_wq)
		FUNC0(vmbus_connection.handle_primary_chan_wq);

	if (vmbus_connection.work_queue)
		FUNC0(vmbus_connection.work_queue);

	if (vmbus_connection.int_page) {
		FUNC1((unsigned long)vmbus_connection.int_page, 0);
		vmbus_connection.int_page = NULL;
	}

	FUNC1((unsigned long)vmbus_connection.monitor_pages[0], 0);
	FUNC1((unsigned long)vmbus_connection.monitor_pages[1], 0);
	vmbus_connection.monitor_pages[0] = NULL;
	vmbus_connection.monitor_pages[1] = NULL;
}