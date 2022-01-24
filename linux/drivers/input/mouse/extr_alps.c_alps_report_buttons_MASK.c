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
struct input_dev {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct input_dev *dev1, struct input_dev *dev2,
				int left, int right, int middle)
{
	struct input_dev *dev;

	/*
	 * If shared button has already been reported on the
	 * other device (dev2) then this event should be also
	 * sent through that device.
	 */
	dev = (dev2 && FUNC2(BTN_LEFT, dev2->key)) ? dev2 : dev1;
	FUNC0(dev, BTN_LEFT, left);

	dev = (dev2 && FUNC2(BTN_RIGHT, dev2->key)) ? dev2 : dev1;
	FUNC0(dev, BTN_RIGHT, right);

	dev = (dev2 && FUNC2(BTN_MIDDLE, dev2->key)) ? dev2 : dev1;
	FUNC0(dev, BTN_MIDDLE, middle);

	/*
	 * Sync the _other_ device now, we'll do the first
	 * device later once we report the rest of the events.
	 */
	if (dev2)
		FUNC1(dev2);
}