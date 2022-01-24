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
struct vmbus_channel {int /*<<< orphan*/  callback_event; int /*<<< orphan*/  percpu_list; int /*<<< orphan*/  sc_list; int /*<<< orphan*/  rescind_event; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vmbus_channel* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  vmbus_on_event ; 

__attribute__((used)) static struct vmbus_channel *FUNC6(void)
{
	struct vmbus_channel *channel;

	channel = FUNC3(sizeof(*channel), GFP_ATOMIC);
	if (!channel)
		return NULL;

	FUNC4(&channel->lock);
	FUNC2(&channel->rescind_event);

	FUNC0(&channel->sc_list);
	FUNC0(&channel->percpu_list);

	FUNC5(&channel->callback_event,
		     vmbus_on_event, (unsigned long)channel);

	FUNC1(channel);

	return channel;
}