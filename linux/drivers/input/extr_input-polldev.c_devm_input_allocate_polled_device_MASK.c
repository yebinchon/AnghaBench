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
struct input_polled_devres {struct input_polled_dev* polldev; } ;
struct input_polled_dev {int devres_managed; TYPE_2__* input; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_input_polldev_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct input_polled_devres*) ; 
 struct input_polled_devres* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_polled_devres*) ; 
 struct input_polled_dev* FUNC3 () ; 

struct input_polled_dev *FUNC4(struct device *dev)
{
	struct input_polled_dev *polldev;
	struct input_polled_devres *devres;

	devres = FUNC1(devm_input_polldev_release, sizeof(*devres),
			      GFP_KERNEL);
	if (!devres)
		return NULL;

	polldev = FUNC3();
	if (!polldev) {
		FUNC2(devres);
		return NULL;
	}

	polldev->input->dev.parent = dev;
	polldev->devres_managed = true;

	devres->polldev = polldev;
	FUNC0(dev, devres);

	return polldev;
}