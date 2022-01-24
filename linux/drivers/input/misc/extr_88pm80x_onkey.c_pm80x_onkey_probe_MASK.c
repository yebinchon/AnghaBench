#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct pm80x_onkey_info {scalar_t__ irq; TYPE_3__* idev; struct pm80x_chip* pm80x; int /*<<< orphan*/  map; } ;
struct pm80x_chip {int /*<<< orphan*/  regmap; } ;
struct TYPE_11__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_6__ dev; } ;
struct TYPE_9__ {TYPE_6__* parent; } ;
struct TYPE_8__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_10__ {char* name; char* phys; int /*<<< orphan*/  keybit; int /*<<< orphan*/ * evbit; TYPE_2__ dev; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  PM800_LONG_ONKEY_EN ; 
 int /*<<< orphan*/  PM800_LONKEY_PRESS_TIME ; 
 int /*<<< orphan*/  PM800_LONKEY_PRESS_TIME_MASK ; 
 int /*<<< orphan*/  PM800_RTC_MISC3 ; 
 int /*<<< orphan*/  PM800_RTC_MISC4 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,char*,...) ; 
 struct pm80x_chip* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int) ; 
 TYPE_3__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct pm80x_onkey_info*) ; 
 struct pm80x_onkey_info* FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct pm80x_onkey_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct pm80x_chip*,scalar_t__,struct pm80x_onkey_info*) ; 
 int /*<<< orphan*/  pm80x_onkey_handler ; 
 int FUNC13 (struct pm80x_chip*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pm80x_onkey_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{

	struct pm80x_chip *chip = FUNC3(pdev->dev.parent);
	struct pm80x_onkey_info *info;
	int err;

	info = FUNC9(sizeof(struct pm80x_onkey_info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->pm80x = chip;

	info->irq = FUNC10(pdev, 0);
	if (info->irq < 0) {
		err = -EINVAL;
		goto out;
	}

	info->map = info->pm80x->regmap;
	if (!info->map) {
		FUNC2(&pdev->dev, "no regmap!\n");
		err = -EINVAL;
		goto out;
	}

	info->idev = FUNC5();
	if (!info->idev) {
		FUNC2(&pdev->dev, "Failed to allocate input dev\n");
		err = -ENOMEM;
		goto out;
	}

	info->idev->name = "88pm80x_on";
	info->idev->phys = "88pm80x_on/input0";
	info->idev->id.bustype = BUS_I2C;
	info->idev->dev.parent = &pdev->dev;
	info->idev->evbit[0] = FUNC0(EV_KEY);
	FUNC1(KEY_POWER, info->idev->keybit);

	err = FUNC13(info->pm80x, info->irq, pm80x_onkey_handler,
					    IRQF_ONESHOT, "onkey", info);
	if (err < 0) {
		FUNC2(&pdev->dev, "Failed to request IRQ: #%d: %d\n",
			info->irq, err);
		goto out_reg;
	}

	err = FUNC7(info->idev);
	if (err) {
		FUNC2(&pdev->dev, "Can't register input device: %d\n", err);
		goto out_irq;
	}

	FUNC11(pdev, info);

	/* Enable long onkey detection */
	FUNC14(info->map, PM800_RTC_MISC4, PM800_LONG_ONKEY_EN,
			   PM800_LONG_ONKEY_EN);
	/* Set 8-second interval */
	FUNC14(info->map, PM800_RTC_MISC3,
			   PM800_LONKEY_PRESS_TIME_MASK,
			   PM800_LONKEY_PRESS_TIME);

	FUNC4(&pdev->dev, 1);
	return 0;

out_irq:
	FUNC12(info->pm80x, info->irq, info);
out_reg:
	FUNC6(info->idev);
out:
	FUNC8(info);
	return err;
}