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
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct palmas_pwron_config {int long_press_time_val; int pwron_debounce_val; } ;
struct palmas_pwron {int /*<<< orphan*/  irq; int /*<<< orphan*/  input_work; struct input_dev* input_dev; struct palmas* palmas; } ;
struct palmas {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct input_dev {char* name; char* phys; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_HIGH ; 
 int IRQF_TRIGGER_LOW ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  PALMAS_LONG_PRESS_KEY ; 
 int PALMAS_LPK_TIME_MASK ; 
 int /*<<< orphan*/  PALMAS_PMU_CONTROL_BASE ; 
 int PALMAS_PWRON_DEBOUNCE_MASK ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct palmas* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct palmas_pwron*) ; 
 struct input_dev* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*) ; 
 int FUNC10 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct palmas_pwron*) ; 
 struct palmas_pwron* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  palmas_power_button_work ; 
 int /*<<< orphan*/  FUNC14 (struct device*,struct palmas_pwron_config*) ; 
 int FUNC15 (struct palmas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct palmas_pwron*) ; 
 int /*<<< orphan*/  pwron_irq ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct palmas_pwron*) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct palmas *palmas = FUNC4(pdev->dev.parent);
	struct device *dev = &pdev->dev;
	struct input_dev *input_dev;
	struct palmas_pwron *pwron;
	struct palmas_pwron_config config;
	int val;
	int error;

	FUNC14(dev, &config);

	pwron = FUNC13(sizeof(*pwron), GFP_KERNEL);
	if (!pwron)
		return -ENOMEM;

	input_dev = FUNC8();
	if (!input_dev) {
		FUNC3(dev, "Can't allocate power button\n");
		error = -ENOMEM;
		goto err_free_mem;
	}

	input_dev->name = "palmas_pwron";
	input_dev->phys = "palmas_pwron/input0";
	input_dev->dev.parent = dev;

	FUNC11(input_dev, EV_KEY, KEY_POWER);

	/*
	 * Setup default hardware shutdown option (long key press)
	 * and debounce.
	 */
	val = config.long_press_time_val << FUNC1(PALMAS_LPK_TIME_MASK);
	val |= config.pwron_debounce_val << FUNC1(PALMAS_PWRON_DEBOUNCE_MASK);
	error = FUNC15(palmas, PALMAS_PMU_CONTROL_BASE,
				   PALMAS_LONG_PRESS_KEY,
				   PALMAS_LPK_TIME_MASK |
					PALMAS_PWRON_DEBOUNCE_MASK,
				   val);
	if (error) {
		FUNC3(dev, "LONG_PRESS_KEY_UPDATE failed: %d\n", error);
		goto err_free_input;
	}

	pwron->palmas = palmas;
	pwron->input_dev = input_dev;

	FUNC0(&pwron->input_work, palmas_power_button_work);

	pwron->irq = FUNC16(pdev, 0);
	error = FUNC18(pwron->irq, NULL, pwron_irq,
				     IRQF_TRIGGER_HIGH |
					IRQF_TRIGGER_LOW |
					IRQF_ONESHOT,
				     FUNC5(dev), pwron);
	if (error) {
		FUNC3(dev, "Can't get IRQ for pwron: %d\n", error);
		goto err_free_input;
	}

	error = FUNC10(input_dev);
	if (error) {
		FUNC3(dev, "Can't register power button: %d\n", error);
		goto err_free_irq;
	}

	FUNC17(pdev, pwron);
	FUNC6(dev, true);

	return 0;

err_free_irq:
	FUNC2(&pwron->input_work);
	FUNC7(pwron->irq, pwron);
err_free_input:
	FUNC9(input_dev);
err_free_mem:
	FUNC12(pwron);
	return error;
}