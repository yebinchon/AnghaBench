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
struct sdei_event {int reregister; int reenable; scalar_t__ type; int /*<<< orphan*/  event_num; } ;

/* Variables and functions */
 scalar_t__ SDEI_EVENT_TYPE_SHARED ; 
 int /*<<< orphan*/  _local_event_unregister ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sdei_event*) ; 
 int /*<<< orphan*/  sdei_events_lock ; 
 int /*<<< orphan*/  sdei_list_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct sdei_event *event)
{
	FUNC0(&sdei_events_lock);

	FUNC3(&sdei_list_lock);
	event->reregister = false;
	event->reenable = false;
	FUNC4(&sdei_list_lock);

	if (event->type == SDEI_EVENT_TYPE_SHARED)
		return FUNC1(event->event_num);

	return FUNC2(_local_event_unregister, event);
}