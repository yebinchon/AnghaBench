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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct input_dev {TYPE_1__ dev; scalar_t__ devres_managed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devm_input_device_match ; 
 int /*<<< orphan*/  devm_input_device_release ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 

void FUNC3(struct input_dev *dev)
{
	if (dev) {
		if (dev->devres_managed)
			FUNC0(FUNC1(dev->dev.parent,
						devm_input_device_release,
						devm_input_device_match,
						dev));
		FUNC2(dev);
	}
}