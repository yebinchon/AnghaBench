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
struct cm109_dev {int ctl_urb_pending; int buzzer_pending; int /*<<< orphan*/  ctl_submit_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cm109_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct cm109_dev *dev)
{
	unsigned long flags;

	FUNC1(&dev->ctl_submit_lock, flags);

	if (dev->ctl_urb_pending) {
		/* URB completion will resubmit */
		dev->buzzer_pending = 1;
	} else {
		dev->ctl_urb_pending = 1;
		FUNC0(dev);
	}

	FUNC2(&dev->ctl_submit_lock, flags);
}