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
struct TYPE_2__ {int priority; int /*<<< orphan*/  notifier_call; } ;
struct rave_sp_power_button {TYPE_1__ nb; struct input_dev* idev; } ;
struct device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct input_dev {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KEY_POWER ; 
 struct input_dev* FUNC0 (struct device*) ; 
 struct rave_sp_power_button* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,TYPE_1__*) ; 
 int FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rave_sp_power_button_event ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct rave_sp_power_button *pb;
	struct input_dev *idev;
	int error;

	pb = FUNC1(dev, sizeof(*pb), GFP_KERNEL);
	if (!pb)
		return -ENOMEM;

	idev = FUNC0(dev);
	if (!idev)
		return -ENOMEM;

	idev->name = pdev->name;

	FUNC4(idev, EV_KEY, KEY_POWER);

	error = FUNC3(idev);
	if (error)
		return error;

	pb->idev = idev;
	pb->nb.notifier_call = rave_sp_power_button_event;
	pb->nb.priority = 128;

	error = FUNC2(dev, &pb->nb);
	if (error)
		return error;

	return 0;
}