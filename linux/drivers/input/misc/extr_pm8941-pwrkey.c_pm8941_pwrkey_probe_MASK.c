#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_13__ {int /*<<< orphan*/  notifier_call; } ;
struct pm8941_pwrkey {int baseaddr; scalar_t__ irq; int code; TYPE_1__ reboot_notifier; TYPE_4__* input; TYPE_2__* data; void* regmap; int /*<<< orphan*/  revision; TYPE_3__* dev; } ;
struct TYPE_15__ {int /*<<< orphan*/  of_node; struct device* parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct device {int /*<<< orphan*/  of_node; struct device* parent; } ;
struct TYPE_16__ {char* name; char* phys; } ;
struct TYPE_14__ {int pull_up_bit; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int KEY_POWER ; 
 int PON_DBC_CTL ; 
 int PON_DBC_DELAY_MASK ; 
 int PON_PULL_CTL ; 
 int PON_REV2 ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,...) ; 
 void* FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 TYPE_4__* FUNC4 (TYPE_3__*) ; 
 struct pm8941_pwrkey* FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pm8941_pwrkey*) ; 
 int FUNC7 (int) ; 
 int FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC10 (TYPE_3__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct pm8941_pwrkey*) ; 
 int /*<<< orphan*/  pm8941_pwrkey_irq ; 
 int /*<<< orphan*/  pm8941_reboot_notify ; 
 int FUNC15 (TYPE_1__*) ; 
 int FUNC16 (void*,int,int /*<<< orphan*/ *) ; 
 int FUNC17 (void*,int,int,int) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct pm8941_pwrkey *pwrkey;
	bool pull_up;
	struct device *parent;
	u32 req_delay;
	int error;

	if (FUNC12(pdev->dev.of_node, "debounce", &req_delay))
		req_delay = 15625;

	if (req_delay > 2000000 || req_delay == 0) {
		FUNC1(&pdev->dev, "invalid debounce time: %u\n", req_delay);
		return -EINVAL;
	}

	pull_up = FUNC11(pdev->dev.of_node, "bias-pull-up");

	pwrkey = FUNC5(&pdev->dev, sizeof(*pwrkey), GFP_KERNEL);
	if (!pwrkey)
		return -ENOMEM;

	pwrkey->dev = &pdev->dev;
	pwrkey->data = FUNC10(&pdev->dev);

	parent = pdev->dev.parent;
	pwrkey->regmap = FUNC2(parent, NULL);
	if (!pwrkey->regmap) {
		/*
		 * We failed to get regmap for parent. Let's see if we are
		 * a child of pon node and read regmap and reg from its
		 * parent.
		 */
		pwrkey->regmap = FUNC2(parent->parent, NULL);
		if (!pwrkey->regmap) {
			FUNC1(&pdev->dev, "failed to locate regmap\n");
			return -ENODEV;
		}

		error = FUNC12(parent->of_node,
					     "reg", &pwrkey->baseaddr);
	} else {
		error = FUNC12(pdev->dev.of_node, "reg",
					     &pwrkey->baseaddr);
	}
	if (error)
		return error;

	pwrkey->irq = FUNC13(pdev, 0);
	if (pwrkey->irq < 0)
		return pwrkey->irq;

	error = FUNC16(pwrkey->regmap, pwrkey->baseaddr + PON_REV2,
			    &pwrkey->revision);
	if (error) {
		FUNC1(&pdev->dev, "failed to set debounce: %d\n", error);
		return error;
	}

	error = FUNC12(pdev->dev.of_node, "linux,code",
				     &pwrkey->code);
	if (error) {
		FUNC0(&pdev->dev,
			"no linux,code assuming power (%d)\n", error);
		pwrkey->code = KEY_POWER;
	}

	pwrkey->input = FUNC4(&pdev->dev);
	if (!pwrkey->input) {
		FUNC0(&pdev->dev, "unable to allocate input device\n");
		return -ENOMEM;
	}

	FUNC9(pwrkey->input, EV_KEY, pwrkey->code);

	pwrkey->input->name = "pm8941_pwrkey";
	pwrkey->input->phys = "pm8941_pwrkey/input0";

	req_delay = (req_delay << 6) / USEC_PER_SEC;
	req_delay = FUNC7(req_delay);

	error = FUNC17(pwrkey->regmap,
				   pwrkey->baseaddr + PON_DBC_CTL,
				   PON_DBC_DELAY_MASK,
				   req_delay);
	if (error) {
		FUNC1(&pdev->dev, "failed to set debounce: %d\n", error);
		return error;
	}

	error = FUNC17(pwrkey->regmap,
				   pwrkey->baseaddr + PON_PULL_CTL,
				   pwrkey->data->pull_up_bit,
				   pull_up ? pwrkey->data->pull_up_bit : 0);
	if (error) {
		FUNC1(&pdev->dev, "failed to set pull: %d\n", error);
		return error;
	}

	error = FUNC6(&pdev->dev, pwrkey->irq,
					  NULL, pm8941_pwrkey_irq,
					  IRQF_ONESHOT,
					  "pm8941_pwrkey", pwrkey);
	if (error) {
		FUNC1(&pdev->dev, "failed requesting IRQ: %d\n", error);
		return error;
	}

	error = FUNC8(pwrkey->input);
	if (error) {
		FUNC1(&pdev->dev, "failed to register input device: %d\n",
			error);
		return error;
	}

	pwrkey->reboot_notifier.notifier_call = pm8941_reboot_notify,
	error = FUNC15(&pwrkey->reboot_notifier);
	if (error) {
		FUNC1(&pdev->dev, "failed to register reboot notifier: %d\n",
			error);
		return error;
	}

	FUNC14(pdev, pwrkey);
	FUNC3(&pdev->dev, 1);

	return 0;
}