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
struct input_devres {struct input_dev* input; } ;
struct TYPE_2__ {struct device* parent; } ;
struct input_dev {int devres_managed; TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_input_device_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct input_devres*) ; 
 struct input_devres* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_devres*) ; 
 struct input_dev* FUNC3 () ; 

struct input_dev *FUNC4(struct device *dev)
{
	struct input_dev *input;
	struct input_devres *devres;

	devres = FUNC1(devm_input_device_release,
			      sizeof(*devres), GFP_KERNEL);
	if (!devres)
		return NULL;

	input = FUNC3();
	if (!input) {
		FUNC2(devres);
		return NULL;
	}

	input->dev.parent = dev;
	input->devres_managed = true;

	devres->input = input;
	FUNC0(dev, devres);

	return input;
}