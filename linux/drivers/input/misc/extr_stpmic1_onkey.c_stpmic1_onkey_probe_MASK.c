#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stpmic1_onkey {scalar_t__ irq_falling; scalar_t__ irq_rising; struct input_dev* input_dev; } ;
struct stpmic1 {int /*<<< orphan*/  regmap; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct input_dev {char* name; char* phys; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  PADS_PULL_CR ; 
 int /*<<< orphan*/  PKEY_TURNOFF_CR ; 
 unsigned int PONKEY_CC_FLAG_CLEAR ; 
 unsigned int PONKEY_PU_INACTIVE ; 
 unsigned int PONKEY_PWR_OFF ; 
 unsigned int PONKEY_TURNOFF_MASK ; 
 int PONKEY_TURNOFF_TIMER_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct stpmic1* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int) ; 
 scalar_t__ FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,unsigned int*) ; 
 struct input_dev* FUNC7 (struct device*) ; 
 struct stpmic1_onkey* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stpmic1_onkey*) ; 
 int FUNC10 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  onkey_falling_irq ; 
 int /*<<< orphan*/  onkey_rising_irq ; 
 void* FUNC12 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct stpmic1_onkey*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct stpmic1 *pmic = FUNC2(pdev->dev.parent);
	struct device *dev = &pdev->dev;
	struct input_dev *input_dev;
	struct stpmic1_onkey *onkey;
	unsigned int val, reg = 0;
	int error;

	onkey = FUNC8(dev, sizeof(*onkey), GFP_KERNEL);
	if (!onkey)
		return -ENOMEM;

	onkey->irq_falling = FUNC12(pdev, "onkey-falling");
	if (onkey->irq_falling < 0)
		return onkey->irq_falling;

	onkey->irq_rising = FUNC12(pdev, "onkey-rising");
	if (onkey->irq_rising < 0)
		return onkey->irq_rising;

	if (!FUNC6(dev, "power-off-time-sec", &val)) {
		if (val > 0 && val <= 16) {
			FUNC0(dev, "power-off-time=%d seconds\n", val);
			reg |= PONKEY_PWR_OFF;
			reg |= ((16 - val) & PONKEY_TURNOFF_TIMER_MASK);
		} else {
			FUNC1(dev, "power-off-time-sec out of range\n");
			return -EINVAL;
		}
	}

	if (FUNC5(dev, "st,onkey-clear-cc-flag"))
		reg |= PONKEY_CC_FLAG_CLEAR;

	error = FUNC14(pmic->regmap, PKEY_TURNOFF_CR,
				   PONKEY_TURNOFF_MASK, reg);
	if (error) {
		FUNC1(dev, "PKEY_TURNOFF_CR write failed: %d\n", error);
		return error;
	}

	if (FUNC5(dev, "st,onkey-pu-inactive")) {
		error = FUNC14(pmic->regmap, PADS_PULL_CR,
					   PONKEY_PU_INACTIVE,
					   PONKEY_PU_INACTIVE);
		if (error) {
			FUNC1(dev, "ONKEY Pads configuration failed: %d\n",
				error);
			return error;
		}
	}

	input_dev = FUNC7(dev);
	if (!input_dev) {
		FUNC1(dev, "Can't allocate Pwr Onkey Input Device\n");
		return -ENOMEM;
	}

	input_dev->name = "pmic_onkey";
	input_dev->phys = "pmic_onkey/input0";

	FUNC11(input_dev, EV_KEY, KEY_POWER);

	onkey->input_dev = input_dev;

	/* interrupt is nested in a thread */
	error = FUNC9(dev, onkey->irq_falling, NULL,
					  onkey_falling_irq, IRQF_ONESHOT,
					  FUNC3(dev), onkey);
	if (error) {
		FUNC1(dev, "Can't get IRQ Onkey Falling: %d\n", error);
		return error;
	}

	error = FUNC9(dev, onkey->irq_rising, NULL,
					  onkey_rising_irq, IRQF_ONESHOT,
					  FUNC3(dev), onkey);
	if (error) {
		FUNC1(dev, "Can't get IRQ Onkey Rising: %d\n", error);
		return error;
	}

	error = FUNC10(input_dev);
	if (error) {
		FUNC1(dev, "Can't register power button: %d\n", error);
		return error;
	}

	FUNC13(pdev, onkey);
	FUNC4(dev, true);

	return 0;
}