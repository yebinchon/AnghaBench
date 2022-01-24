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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {char* name; char* phys; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct input_dev* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct input_dev*) ; 
 int FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  powerbutton_irq ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct input_dev *pwr;
	int irq = FUNC6(pdev, 0);
	int err;

	pwr = FUNC2(&pdev->dev);
	if (!pwr) {
		FUNC0(&pdev->dev, "Can't allocate power button\n");
		return -ENOMEM;
	}

	FUNC5(pwr, EV_KEY, KEY_POWER);
	pwr->name = "twl4030_pwrbutton";
	pwr->phys = "twl4030_pwrbutton/input0";
	pwr->dev.parent = &pdev->dev;

	err = FUNC3(&pdev->dev, irq, NULL, powerbutton_irq,
			IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING |
			IRQF_ONESHOT,
			"twl4030_pwrbutton", pwr);
	if (err < 0) {
		FUNC0(&pdev->dev, "Can't get IRQ for pwrbutton: %d\n", err);
		return err;
	}

	err = FUNC4(pwr);
	if (err) {
		FUNC0(&pdev->dev, "Can't register power button: %d\n", err);
		return err;
	}

	FUNC1(&pdev->dev, true);

	return 0;
}