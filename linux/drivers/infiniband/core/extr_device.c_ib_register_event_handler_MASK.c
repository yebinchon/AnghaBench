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
struct ib_event_handler {TYPE_1__* device; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  event_handler_lock; int /*<<< orphan*/  event_handler_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct ib_event_handler *event_handler)
{
	unsigned long flags;

	FUNC1(&event_handler->device->event_handler_lock, flags);
	FUNC0(&event_handler->list,
		      &event_handler->device->event_handler_list);
	FUNC2(&event_handler->device->event_handler_lock, flags);
}