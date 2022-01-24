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
struct input_dev {int /*<<< orphan*/  event_lock; int /*<<< orphan*/  evbit; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct input_dev *dev,
		 unsigned int type, unsigned int code, int value)
{
	unsigned long flags;

	if (FUNC1(type, dev->evbit, EV_MAX)) {

		FUNC2(&dev->event_lock, flags);
		FUNC0(dev, type, code, value);
		FUNC3(&dev->event_lock, flags);
	}
}