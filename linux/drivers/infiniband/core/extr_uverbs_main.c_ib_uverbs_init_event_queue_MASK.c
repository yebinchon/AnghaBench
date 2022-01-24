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
struct ib_uverbs_event_queue {int /*<<< orphan*/ * async_queue; scalar_t__ is_closed; int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  event_list; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ib_uverbs_event_queue *ev_queue)
{
	FUNC2(&ev_queue->lock);
	FUNC0(&ev_queue->event_list);
	FUNC1(&ev_queue->poll_wait);
	ev_queue->is_closed   = 0;
	ev_queue->async_queue = NULL;
}