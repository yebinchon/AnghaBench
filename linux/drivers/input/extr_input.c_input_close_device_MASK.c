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
struct input_handle {int /*<<< orphan*/  open; struct input_dev* dev; } ;
struct input_dev {int /*<<< orphan*/  mutex; int /*<<< orphan*/  (* close ) (struct input_dev*) ;scalar_t__ poller; int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_handle*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct input_handle *handle)
{
	struct input_dev *dev = handle->dev;

	FUNC2(&dev->mutex);

	FUNC0(handle);

	if (!--dev->users) {
		if (dev->poller)
			FUNC1(dev->poller);

		if (dev->close)
			dev->close(dev);
	}

	if (!--handle->open) {
		/*
		 * synchronize_rcu() makes sure that input_pass_event()
		 * completed and that no more input events are delivered
		 * through this handle
		 */
		FUNC5();
	}

	FUNC3(&dev->mutex);
}