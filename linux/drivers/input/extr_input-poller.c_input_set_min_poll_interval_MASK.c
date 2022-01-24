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
struct input_dev {TYPE_1__* poller; } ;
struct TYPE_2__ {unsigned int poll_interval_min; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct input_dev*) ; 

void FUNC1(struct input_dev *dev, unsigned int interval)
{
	if (FUNC0(dev))
		dev->poller->poll_interval_min = interval;
}