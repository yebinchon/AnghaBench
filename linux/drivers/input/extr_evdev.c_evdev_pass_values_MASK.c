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
struct timespec64 {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct input_value {scalar_t__ type; scalar_t__ code; int /*<<< orphan*/  value; } ;
struct input_event {int input_event_usec; scalar_t__ type; scalar_t__ code; int /*<<< orphan*/  value; int /*<<< orphan*/  input_event_sec; } ;
struct evdev_client {size_t clk_type; scalar_t__ packet_head; scalar_t__ head; int /*<<< orphan*/  buffer_lock; scalar_t__ revoked; struct evdev* evdev; } ;
struct evdev {int /*<<< orphan*/  wait; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 scalar_t__ EV_SYN ; 
 int NSEC_PER_USEC ; 
 scalar_t__ SYN_REPORT ; 
 scalar_t__ FUNC0 (struct evdev_client*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct evdev_client*,struct input_event*) ; 
 struct timespec64 FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct evdev_client *client,
			const struct input_value *vals, unsigned int count,
			ktime_t *ev_time)
{
	struct evdev *evdev = client->evdev;
	const struct input_value *v;
	struct input_event event;
	struct timespec64 ts;
	bool wakeup = false;

	if (client->revoked)
		return;

	ts = FUNC2(ev_time[client->clk_type]);
	event.input_event_sec = ts.tv_sec;
	event.input_event_usec = ts.tv_nsec / NSEC_PER_USEC;

	/* Interrupts are disabled, just acquire the lock. */
	FUNC3(&client->buffer_lock);

	for (v = vals; v != vals + count; v++) {
		if (FUNC0(client, v->type, v->code))
			continue;

		if (v->type == EV_SYN && v->code == SYN_REPORT) {
			/* drop empty SYN_REPORT */
			if (client->packet_head == client->head)
				continue;

			wakeup = true;
		}

		event.type = v->type;
		event.code = v->code;
		event.value = v->value;
		FUNC1(client, &event);
	}

	FUNC4(&client->buffer_lock);

	if (wakeup)
		FUNC5(&evdev->wait);
}