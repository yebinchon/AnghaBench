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
struct input_handle {struct input_dev* dev; } ;
struct input_dev {int /*<<< orphan*/  event_lock; int /*<<< orphan*/  grab; int /*<<< orphan*/  evbit; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct input_handle* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct input_handle *handle,
			unsigned int type, unsigned int code, int value)
{
	struct input_dev *dev = handle->dev;
	struct input_handle *grab;
	unsigned long flags;

	if (FUNC1(type, dev->evbit, EV_MAX)) {
		FUNC5(&dev->event_lock, flags);

		FUNC3();
		grab = FUNC2(dev->grab);
		if (!grab || grab == handle)
			FUNC0(dev, type, code, value);
		FUNC4();

		FUNC6(&dev->event_lock, flags);
	}
}