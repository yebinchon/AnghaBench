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
struct vmbus_channel {int /*<<< orphan*/  device_obj; int /*<<< orphan*/  rescind; int /*<<< orphan*/  probe_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct vmbus_channel *channel)
{
	FUNC0(!FUNC2(channel));

	/* We always get a rescind msg when a connection is closed. */
	while (!FUNC1(channel->probe_done) || !FUNC1(channel->rescind))
		FUNC3(1);

	FUNC4(channel->device_obj);
}