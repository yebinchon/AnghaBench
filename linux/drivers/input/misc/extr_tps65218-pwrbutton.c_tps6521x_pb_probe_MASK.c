#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tps6521x_pwrbutton {TYPE_3__* data; struct input_dev* idev; struct device* dev; int /*<<< orphan*/  regmap; int /*<<< orphan*/  phys; } ;
struct device {int /*<<< orphan*/  parent; int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {TYPE_3__* data; } ;
struct TYPE_5__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_4__ {struct device* parent; } ;
struct input_dev {char* name; TYPE_2__ id; TYPE_1__ dev; int /*<<< orphan*/  phys; } ;
struct TYPE_6__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int) ; 
 struct input_dev* FUNC3 (struct device*) ; 
 struct tps6521x_pwrbutton* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct tps6521x_pwrbutton*) ; 
 int FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_tps6521x_pb_match ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  tps6521x_pb_irq ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct tps6521x_pwrbutton *pwr;
	struct input_dev *idev;
	const struct of_device_id *match;
	int error;
	int irq;

	match = FUNC8(of_tps6521x_pb_match, dev->of_node);
	if (!match)
		return -ENXIO;

	pwr = FUNC4(dev, sizeof(*pwr), GFP_KERNEL);
	if (!pwr)
		return -ENOMEM;

	pwr->data = match->data;

	idev = FUNC3(dev);
	if (!idev)
		return -ENOMEM;

	idev->name = pwr->data->name;
	FUNC10(pwr->phys, sizeof(pwr->phys), "%s/input0",
		pwr->data->name);
	idev->phys = pwr->phys;
	idev->dev.parent = dev;
	idev->id.bustype = BUS_I2C;

	FUNC7(idev, EV_KEY, KEY_POWER);

	pwr->regmap = FUNC1(dev->parent, NULL);
	pwr->dev = dev;
	pwr->idev = idev;
	FUNC2(dev, true);

	irq = FUNC9(pdev, 0);
	if (irq < 0)
		return -EINVAL;

	error = FUNC5(dev, irq, NULL, tps6521x_pb_irq,
					  IRQF_TRIGGER_RISING |
						IRQF_TRIGGER_FALLING |
						IRQF_ONESHOT,
					  pwr->data->name, pwr);
	if (error) {
		FUNC0(dev, "failed to request IRQ #%d: %d\n", irq, error);
		return error;
	}

	error= FUNC6(idev);
	if (error) {
		FUNC0(dev, "Can't register power button: %d\n", error);
		return error;
	}

	return 0;
}