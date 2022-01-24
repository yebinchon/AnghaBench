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
struct lineevent_state {int eflags; int /*<<< orphan*/  wait; int /*<<< orphan*/  events; int /*<<< orphan*/  desc; scalar_t__ timestamp; } ;
struct gpioevent_data {void* id; scalar_t__ timestamp; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  ge ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 void* GPIOEVENT_EVENT_FALLING_EDGE ; 
 void* GPIOEVENT_EVENT_RISING_EDGE ; 
 int GPIOEVENT_REQUEST_FALLING_EDGE ; 
 int GPIOEVENT_REQUEST_RISING_EDGE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct gpioevent_data) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct gpioevent_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *p)
{
	struct lineevent_state *le = p;
	struct gpioevent_data ge;
	int ret;

	/* Do not leak kernel stack to userspace */
	FUNC3(&ge, 0, sizeof(ge));

	/*
	 * We may be running from a nested threaded interrupt in which case
	 * we didn't get the timestamp from lineevent_irq_handler().
	 */
	if (!le->timestamp)
		ge.timestamp = FUNC2();
	else
		ge.timestamp = le->timestamp;

	if (le->eflags & GPIOEVENT_REQUEST_RISING_EDGE
	    && le->eflags & GPIOEVENT_REQUEST_FALLING_EDGE) {
		int level = FUNC0(le->desc);
		if (level)
			/* Emit low-to-high event */
			ge.id = GPIOEVENT_EVENT_RISING_EDGE;
		else
			/* Emit high-to-low event */
			ge.id = GPIOEVENT_EVENT_FALLING_EDGE;
	} else if (le->eflags & GPIOEVENT_REQUEST_RISING_EDGE) {
		/* Emit low-to-high event */
		ge.id = GPIOEVENT_EVENT_RISING_EDGE;
	} else if (le->eflags & GPIOEVENT_REQUEST_FALLING_EDGE) {
		/* Emit high-to-low event */
		ge.id = GPIOEVENT_EVENT_FALLING_EDGE;
	} else {
		return IRQ_NONE;
	}

	ret = FUNC1(&le->events, ge);
	if (ret)
		FUNC4(&le->wait, EPOLLIN);

	return IRQ_HANDLED;
}