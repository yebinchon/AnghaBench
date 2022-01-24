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

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sdei_event*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdei_event*) ; 
 struct sdei_event* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdei_events_lock ; 

int FUNC8(u32 event_num)
{
	int err;
	struct sdei_event *event;

	FUNC0(FUNC2());

	FUNC3(&sdei_events_lock);
	event = FUNC7(event_num);
	do {
		if (!event) {
			FUNC5("Event %u not registered\n", event_num);
			err = -ENOENT;
			break;
		}

		err = FUNC1(event);
		if (err)
			break;

		FUNC6(event);
	} while (0);
	FUNC4(&sdei_events_lock);

	return err;
}