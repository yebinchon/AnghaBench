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
struct TYPE_2__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; char* phys; int /*<<< orphan*/  dev; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct input_dev* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,char*,struct input_dev*) ; 
 int FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct input_dev*) ; 
 int /*<<< orphan*/  pwrkey_fall_irq ; 
 int /*<<< orphan*/  pwrkey_rise_irq ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct input_dev *pwr;
	int fall_irq, rise_irq;
	int err;

	pwr = FUNC2(&pdev->dev);
	if (!pwr) {
		FUNC0(&pdev->dev, "Can't allocate power button\n");
		return -ENOMEM;
	}

	pwr->name = "rk805 pwrkey";
	pwr->phys = "rk805_pwrkey/input0";
	pwr->id.bustype = BUS_HOST;
	FUNC5(pwr, EV_KEY, KEY_POWER);

	fall_irq = FUNC6(pdev, 0);
	if (fall_irq < 0)
		return fall_irq;

	rise_irq = FUNC6(pdev, 1);
	if (rise_irq < 0)
		return rise_irq;

	err = FUNC3(&pwr->dev, fall_irq,
					   pwrkey_fall_irq,
					   IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					   "rk805_pwrkey_fall", pwr);
	if (err < 0) {
		FUNC0(&pdev->dev, "Can't register fall irq: %d\n", err);
		return err;
	}

	err = FUNC3(&pwr->dev, rise_irq,
					   pwrkey_rise_irq,
					   IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					   "rk805_pwrkey_rise", pwr);
	if (err < 0) {
		FUNC0(&pdev->dev, "Can't register rise irq: %d\n", err);
		return err;
	}

	err = FUNC4(pwr);
	if (err) {
		FUNC0(&pdev->dev, "Can't register power button: %d\n", err);
		return err;
	}

	FUNC7(pdev, pwr);
	FUNC1(&pdev->dev, true);

	return 0;
}