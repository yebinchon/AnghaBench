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
typedef  int /*<<< orphan*/  u32 ;
struct sdei_event {int reenable; scalar_t__ type; int /*<<< orphan*/  event_num; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ SDEI_EVENT_TYPE_SHARED ; 
 int /*<<< orphan*/  _ipi_event_disable ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sdei_event*) ; 
 struct sdei_event* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdei_events_lock ; 
 int /*<<< orphan*/  sdei_list_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(u32 event_num)
{
	int err = -EINVAL;
	struct sdei_event *event;

	FUNC0(&sdei_events_lock);
	event = FUNC4(event_num);
	if (!event) {
		FUNC1(&sdei_events_lock);
		return -ENOENT;
	}

	FUNC5(&sdei_list_lock);
	event->reenable = false;
	FUNC6(&sdei_list_lock);

	if (event->type == SDEI_EVENT_TYPE_SHARED)
		err = FUNC2(event->event_num);
	else
		err = FUNC3(_ipi_event_disable, event);
	FUNC1(&sdei_events_lock);

	return err;
}