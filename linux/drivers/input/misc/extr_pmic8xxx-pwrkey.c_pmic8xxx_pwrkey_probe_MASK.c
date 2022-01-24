#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct regmap {int dummy; } ;
struct pmic8xxx_pwrkey {int key_press_irq; struct regmap* regmap; int /*<<< orphan*/  shutdown_fn; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct input_dev {char* name; char* phys; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  PON_CNTL_1 ; 
 unsigned int PON_CNTL_PULL_UP ; 
 unsigned int PON_CNTL_TRIG_DELAY_MASK ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 struct regmap* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 struct input_dev* FUNC4 (TYPE_1__*) ; 
 struct pmic8xxx_pwrkey* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct input_dev*) ; 
 unsigned int FUNC7 (unsigned int) ; 
 int FUNC8 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC13 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct pmic8xxx_pwrkey*) ; 
 int /*<<< orphan*/  pwrkey_press_irq ; 
 int /*<<< orphan*/  pwrkey_release_irq ; 
 int FUNC15 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC16 (struct regmap*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct input_dev *pwr;
	int key_release_irq = FUNC13(pdev, 0);
	int key_press_irq = FUNC13(pdev, 1);
	int err;
	unsigned int delay;
	unsigned int pon_cntl;
	struct regmap *regmap;
	struct pmic8xxx_pwrkey *pwrkey;
	u32 kpd_delay;
	bool pull_up;

	if (FUNC12(pdev->dev.of_node, "debounce", &kpd_delay))
		kpd_delay = 15625;

	/* Valid range of pwr key trigger delay is 1/64 sec to 2 seconds. */
	if (kpd_delay > USEC_PER_SEC * 2 || kpd_delay < USEC_PER_SEC / 64) {
		FUNC1(&pdev->dev, "invalid power key trigger delay\n");
		return -EINVAL;
	}

	pull_up = FUNC11(pdev->dev.of_node, "pull-up");

	regmap = FUNC2(pdev->dev.parent, NULL);
	if (!regmap) {
		FUNC1(&pdev->dev, "failed to locate regmap for the device\n");
		return -ENODEV;
	}

	pwrkey = FUNC5(&pdev->dev, sizeof(*pwrkey), GFP_KERNEL);
	if (!pwrkey)
		return -ENOMEM;

	pwrkey->shutdown_fn = FUNC10(&pdev->dev);
	pwrkey->regmap = regmap;
	pwrkey->key_press_irq = key_press_irq;

	pwr = FUNC4(&pdev->dev);
	if (!pwr) {
		FUNC0(&pdev->dev, "Can't allocate power button\n");
		return -ENOMEM;
	}

	FUNC9(pwr, EV_KEY, KEY_POWER);

	pwr->name = "pmic8xxx_pwrkey";
	pwr->phys = "pmic8xxx_pwrkey/input0";

	delay = (kpd_delay << 6) / USEC_PER_SEC;
	delay = FUNC7(delay);

	err = FUNC15(regmap, PON_CNTL_1, &pon_cntl);
	if (err < 0) {
		FUNC1(&pdev->dev, "failed reading PON_CNTL_1 err=%d\n", err);
		return err;
	}

	pon_cntl &= ~PON_CNTL_TRIG_DELAY_MASK;
	pon_cntl |= (delay & PON_CNTL_TRIG_DELAY_MASK);
	if (pull_up)
		pon_cntl |= PON_CNTL_PULL_UP;
	else
		pon_cntl &= ~PON_CNTL_PULL_UP;

	err = FUNC16(regmap, PON_CNTL_1, pon_cntl);
	if (err < 0) {
		FUNC1(&pdev->dev, "failed writing PON_CNTL_1 err=%d\n", err);
		return err;
	}

	err = FUNC6(&pdev->dev, key_press_irq, pwrkey_press_irq,
			       IRQF_TRIGGER_RISING,
			       "pmic8xxx_pwrkey_press", pwr);
	if (err) {
		FUNC1(&pdev->dev, "Can't get %d IRQ for pwrkey: %d\n",
			key_press_irq, err);
		return err;
	}

	err = FUNC6(&pdev->dev, key_release_irq, pwrkey_release_irq,
			       IRQF_TRIGGER_RISING,
			       "pmic8xxx_pwrkey_release", pwr);
	if (err) {
		FUNC1(&pdev->dev, "Can't get %d IRQ for pwrkey: %d\n",
			key_release_irq, err);
		return err;
	}

	err = FUNC8(pwr);
	if (err) {
		FUNC1(&pdev->dev, "Can't register power key: %d\n", err);
		return err;
	}

	FUNC14(pdev, pwrkey);
	FUNC3(&pdev->dev, 1);

	return 0;
}