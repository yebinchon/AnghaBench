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
struct sdei_event {int dummy; } ;
typedef  int /*<<< orphan*/  sdei_event_callback ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct sdei_event*) ; 
 int FUNC1 (struct sdei_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sdei_event*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,...) ; 
 struct sdei_event* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct sdei_event*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdei_events_lock ; 

int FUNC11(u32 event_num, sdei_event_callback *cb, void *arg)
{
	int err;
	struct sdei_event *event;

	FUNC2(FUNC4());

	FUNC5(&sdei_events_lock);
	do {
		if (FUNC10(event_num)) {
			FUNC7("Event %u already registered\n", event_num);
			err = -EBUSY;
			break;
		}

		event = FUNC8(event_num, cb, arg);
		if (FUNC0(event)) {
			err = FUNC1(event);
			FUNC7("Failed to create event %u: %d\n", event_num,
				err);
			break;
		}

		err = FUNC3(event);
		if (err) {
			FUNC9(event);
			FUNC7("Failed to register event %u: %d\n", event_num,
				err);
		}
	} while (0);
	FUNC6(&sdei_events_lock);

	return err;
}