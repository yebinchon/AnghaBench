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
struct sdei_event {scalar_t__ type; int /*<<< orphan*/  private_registered; struct sdei_event* registered; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ SDEI_EVENT_TYPE_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdei_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sdei_events_lock ; 
 int /*<<< orphan*/  sdei_list_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct sdei_event *event)
{
	FUNC3(&sdei_events_lock);

	FUNC4(&sdei_list_lock);
	FUNC2(&event->list);
	FUNC5(&sdei_list_lock);

	if (event->type == SDEI_EVENT_TYPE_SHARED)
		FUNC1(event->registered);
	else
		FUNC0(event->private_registered);

	FUNC1(event);
}