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
struct dvb_ringbuffer {unsigned long size; void* data; } ;
struct dmxdev_filter {scalar_t__ state; TYPE_1__* dev; struct dvb_ringbuffer buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ DMXDEV_STATE_GO ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (unsigned long) ; 

__attribute__((used)) static int FUNC5(struct dmxdev_filter *dmxdevfilter,
				      unsigned long size)
{
	struct dvb_ringbuffer *buf = &dmxdevfilter->buffer;
	void *newmem;
	void *oldmem;

	if (buf->size == size)
		return 0;
	if (!size)
		return -EINVAL;
	if (dmxdevfilter->state >= DMXDEV_STATE_GO)
		return -EBUSY;

	newmem = FUNC4(size);
	if (!newmem)
		return -ENOMEM;

	oldmem = buf->data;

	FUNC1(&dmxdevfilter->dev->lock);
	buf->data = newmem;
	buf->size = size;

	/* reset and not flush in case the buffer shrinks */
	FUNC0(buf);
	FUNC2(&dmxdevfilter->dev->lock);

	FUNC3(oldmem);

	return 0;
}