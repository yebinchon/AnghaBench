#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct pm860x_onkey_info {int irq; TYPE_3__* idev; TYPE_4__* dev; int /*<<< orphan*/  i2c; struct pm860x_chip* chip; } ;
struct pm860x_chip {scalar_t__ id; int /*<<< orphan*/  dev; int /*<<< orphan*/  companion; int /*<<< orphan*/  client; } ;
struct TYPE_12__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_10__ {TYPE_4__* parent; } ;
struct TYPE_9__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_11__ {char* name; char* phys; void** keybit; void** evbit; TYPE_2__ dev; TYPE_1__ id; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_I2C ; 
 scalar_t__ CHIP_PM8607 ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct pm860x_chip* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int) ; 
 TYPE_3__* FUNC5 (TYPE_4__*) ; 
 struct pm860x_onkey_info* FUNC6 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_4__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pm860x_onkey_info*) ; 
 int FUNC8 (TYPE_3__*) ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct pm860x_onkey_info*) ; 
 int /*<<< orphan*/  pm860x_onkey_handler ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct pm860x_chip *chip = FUNC3(pdev->dev.parent);
	struct pm860x_onkey_info *info;
	int irq, ret;

	irq = FUNC9(pdev, 0);
	if (irq < 0)
		return -EINVAL;

	info = FUNC6(&pdev->dev, sizeof(struct pm860x_onkey_info),
			    GFP_KERNEL);
	if (!info)
		return -ENOMEM;
	info->chip = chip;
	info->i2c = (chip->id == CHIP_PM8607) ? chip->client : chip->companion;
	info->dev = &pdev->dev;
	info->irq = irq;

	info->idev = FUNC5(&pdev->dev);
	if (!info->idev) {
		FUNC2(chip->dev, "Failed to allocate input dev\n");
		return -ENOMEM;
	}

	info->idev->name = "88pm860x_on";
	info->idev->phys = "88pm860x_on/input0";
	info->idev->id.bustype = BUS_I2C;
	info->idev->dev.parent = &pdev->dev;
	info->idev->evbit[0] = FUNC0(EV_KEY);
	info->idev->keybit[FUNC1(KEY_POWER)] = FUNC0(KEY_POWER);

	ret = FUNC8(info->idev);
	if (ret) {
		FUNC2(chip->dev, "Can't register input device: %d\n", ret);
		return ret;
	}

	ret = FUNC7(&pdev->dev, info->irq, NULL,
					pm860x_onkey_handler, IRQF_ONESHOT,
					"onkey", info);
	if (ret < 0) {
		FUNC2(chip->dev, "Failed to request IRQ: #%d: %d\n",
			info->irq, ret);
		return ret;
	}

	FUNC10(pdev, info);
	FUNC4(&pdev->dev, 1);

	return 0;
}