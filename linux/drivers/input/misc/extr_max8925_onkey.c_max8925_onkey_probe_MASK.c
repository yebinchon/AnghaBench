#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct max8925_onkey_info {int* irq; struct input_dev* idev; TYPE_3__* dev; int /*<<< orphan*/  i2c; } ;
struct max8925_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  i2c; } ;
struct TYPE_8__ {TYPE_3__* parent; } ;
struct TYPE_7__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; char* phys; TYPE_2__ dev; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct max8925_chip* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 struct input_dev* FUNC3 (TYPE_3__*) ; 
 struct max8925_onkey_info* FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct max8925_onkey_info*) ; 
 int FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max8925_onkey_handler ; 
 int FUNC8 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct max8925_onkey_info*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct max8925_chip *chip = FUNC1(pdev->dev.parent);
	struct max8925_onkey_info *info;
	struct input_dev *input;
	int irq[2], error;

	irq[0] = FUNC8(pdev, 0);
	if (irq[0] < 0)
		return -EINVAL;

	irq[1] = FUNC8(pdev, 1);
	if (irq[1] < 0)
		return -EINVAL;

	info = FUNC4(&pdev->dev, sizeof(struct max8925_onkey_info),
			    GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	input = FUNC3(&pdev->dev);
	if (!input)
		return -ENOMEM;

	info->idev = input;
	info->i2c = chip->i2c;
	info->dev = &pdev->dev;
	info->irq[0] = irq[0];
	info->irq[1] = irq[1];

	input->name = "max8925_on";
	input->phys = "max8925_on/input0";
	input->id.bustype = BUS_I2C;
	input->dev.parent = &pdev->dev;
	FUNC7(input, EV_KEY, KEY_POWER);

	error = FUNC5(&pdev->dev, irq[0], NULL,
					  max8925_onkey_handler, IRQF_ONESHOT,
					  "onkey-down", info);
	if (error < 0) {
		FUNC0(chip->dev, "Failed to request IRQ: #%d: %d\n",
			irq[0], error);
		return error;
	}

	error = FUNC5(&pdev->dev, irq[1], NULL,
					  max8925_onkey_handler, IRQF_ONESHOT,
					  "onkey-up", info);
	if (error < 0) {
		FUNC0(chip->dev, "Failed to request IRQ: #%d: %d\n",
			irq[1], error);
		return error;
	}

	error = FUNC6(info->idev);
	if (error) {
		FUNC0(chip->dev, "Can't register input device: %d\n", error);
		return error;
	}

	FUNC9(pdev, info);
	FUNC2(&pdev->dev, 1);

	return 0;
}