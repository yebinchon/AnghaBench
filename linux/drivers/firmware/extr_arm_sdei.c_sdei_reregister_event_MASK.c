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
struct sdei_event {scalar_t__ type; int /*<<< orphan*/  event_num; scalar_t__ reenable; } ;

/* Variables and functions */
 scalar_t__ SDEI_EVENT_TYPE_SHARED ; 
 int /*<<< orphan*/  _local_event_enable ; 
 int FUNC0 (struct sdei_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sdei_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdei_event*) ; 
 int /*<<< orphan*/  sdei_events_lock ; 

__attribute__((used)) static int FUNC6(struct sdei_event *event)
{
	int err;

	FUNC1(&sdei_events_lock);

	err = FUNC0(event);
	if (err) {
		FUNC2("Failed to re-register event %u\n", event->event_num);
		FUNC5(event);
		return err;
	}

	if (event->reenable) {
		if (event->type == SDEI_EVENT_TYPE_SHARED)
			err = FUNC3(event->event_num);
		else
			err = FUNC4(_local_event_enable, event);
	}

	if (err)
		FUNC2("Failed to re-enable event %u\n", event->event_num);

	return err;
}