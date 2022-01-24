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
struct vmbus_channel {scalar_t__ target_cpu; int /*<<< orphan*/  callback_event; int /*<<< orphan*/ * sc_creation_callback; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/  (*) (struct vmbus_channel*),struct vmbus_channel*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct vmbus_channel *channel)
{
	/*
	 * vmbus_on_event(), running in the per-channel tasklet, can race
	 * with vmbus_close_internal() in the case of SMP guest, e.g., when
	 * the former is accessing channel->inbound.ring_buffer, the latter
	 * could be freeing the ring_buffer pages, so here we must stop it
	 * first.
	 */
	FUNC4(&channel->callback_event);

	channel->sc_creation_callback = NULL;

	/* Stop the callback asap */
	if (channel->target_cpu != FUNC0()) {
		FUNC1();
		FUNC3(channel->target_cpu, reset_channel_cb,
					 channel, true);
	} else {
		FUNC2(channel);
		FUNC1();
	}

	/* Re-enable tasklet for use on re-open */
	FUNC5(&channel->callback_event);
}