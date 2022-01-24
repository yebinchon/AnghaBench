#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t head; int tail; int /*<<< orphan*/  lock; int /*<<< orphan*/  worker; TYPE_1__* outq; } ;
struct wiimote_data {TYPE_2__ queue; int /*<<< orphan*/  hdev; } ;
typedef  void* __u8 ;
struct TYPE_3__ {size_t size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 size_t HID_MAX_BUFFER_SIZE ; 
 int WIIMOTE_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void* const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct wiimote_data*) ; 

__attribute__((used)) static void FUNC6(struct wiimote_data *wdata, const __u8 *buffer,
								size_t count)
{
	unsigned long flags;
	__u8 newhead;

	if (count > HID_MAX_BUFFER_SIZE) {
		FUNC0(wdata->hdev, "Sending too large output report\n");

		FUNC3(&wdata->queue.lock, flags);
		goto out_error;
	}

	/*
	 * Copy new request into our output queue and check whether the
	 * queue is full. If it is full, discard this request.
	 * If it is empty we need to start a new worker that will
	 * send out the buffer to the hid device.
	 * If the queue is not empty, then there must be a worker
	 * that is currently sending out our buffer and this worker
	 * will reschedule itself until the queue is empty.
	 */

	FUNC3(&wdata->queue.lock, flags);

	FUNC1(wdata->queue.outq[wdata->queue.head].data, buffer, count);
	wdata->queue.outq[wdata->queue.head].size = count;
	newhead = (wdata->queue.head + 1) % WIIMOTE_BUFSIZE;

	if (wdata->queue.head == wdata->queue.tail) {
		wdata->queue.head = newhead;
		FUNC2(&wdata->queue.worker);
	} else if (newhead != wdata->queue.tail) {
		wdata->queue.head = newhead;
	} else {
		FUNC0(wdata->hdev, "Output queue is full");
		goto out_error;
	}

	goto out_unlock;

out_error:
	FUNC5(wdata);
out_unlock:
	FUNC4(&wdata->queue.lock, flags);
}