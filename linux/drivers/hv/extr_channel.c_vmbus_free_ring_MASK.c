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
struct vmbus_channel {int ringbuffer_pagecount; int /*<<< orphan*/ * ringbuffer_page; int /*<<< orphan*/  inbound; int /*<<< orphan*/  outbound; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct vmbus_channel *channel)
{
	FUNC2(&channel->outbound);
	FUNC2(&channel->inbound);

	if (channel->ringbuffer_page) {
		FUNC0(channel->ringbuffer_page,
			     FUNC1(channel->ringbuffer_pagecount
				       << PAGE_SHIFT));
		channel->ringbuffer_page = NULL;
	}
}