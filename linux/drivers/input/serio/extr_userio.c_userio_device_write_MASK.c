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
struct userio_device {unsigned char* buf; size_t head; int tail; int /*<<< orphan*/  waitq; int /*<<< orphan*/  buf_lock; } ;
struct serio {struct userio_device* port_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  this_device; } ;

/* Variables and functions */
 int USERIO_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__ userio_misc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct serio *id, unsigned char val)
{
	struct userio_device *userio = id->port_data;
	unsigned long flags;

	FUNC1(&userio->buf_lock, flags);

	userio->buf[userio->head] = val;
	userio->head = (userio->head + 1) % USERIO_BUFSIZE;

	if (userio->head == userio->tail)
		FUNC0(userio_misc.this_device,
			 "Buffer overflowed, userio client isn't keeping up");

	FUNC2(&userio->buf_lock, flags);

	FUNC3(&userio->waitq);

	return 0;
}