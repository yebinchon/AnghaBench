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
struct vf50_touch_device {int stop_touchscreen; int /*<<< orphan*/  gpio_ym; int /*<<< orphan*/  pen_irq; TYPE_1__* pdev; } ;
struct input_dev {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vf50_touch_device* FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct input_dev *dev_input)
{
	struct vf50_touch_device *touchdev = FUNC2(dev_input);
	struct device *dev = &touchdev->pdev->dev;

	touchdev->stop_touchscreen = true;

	/* Make sure IRQ is not running past close */
	FUNC3();
	FUNC5(touchdev->pen_irq);

	FUNC1(touchdev->gpio_ym, 0);
	FUNC4(dev);

	FUNC0(dev, "Input device %s closed, disable touch detection\n",
		dev_input->name);
}