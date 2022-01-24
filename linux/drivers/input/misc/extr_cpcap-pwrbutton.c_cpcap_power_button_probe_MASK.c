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
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_4__ dev; } ;
struct cpcap_power_button {TYPE_2__* idev; TYPE_4__* dev; int /*<<< orphan*/  regmap; } ;
struct TYPE_10__ {TYPE_4__* parent; } ;
struct TYPE_11__ {char* name; char* phys; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 TYPE_2__* FUNC3 (TYPE_4__*) ; 
 struct cpcap_power_button* FUNC4 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct cpcap_power_button*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  powerbutton_irq ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct cpcap_power_button *button;
	int irq = FUNC8(pdev, 0);
	int err;

	button = FUNC4(&pdev->dev, sizeof(*button), GFP_KERNEL);
	if (!button)
		return -ENOMEM;

	button->idev = FUNC3(&pdev->dev);
	if (!button->idev)
		return -ENOMEM;

	button->regmap = FUNC1(pdev->dev.parent, NULL);
	if (!button->regmap)
		return -ENODEV;

	button->dev = &pdev->dev;

	button->idev->name = "cpcap-pwrbutton";
	button->idev->phys = "cpcap-pwrbutton/input0";
	button->idev->dev.parent = button->dev;
	FUNC7(button->idev, EV_KEY, KEY_POWER);

	err = FUNC5(&pdev->dev, irq, NULL,
		powerbutton_irq, IRQF_ONESHOT, "cpcap_pwrbutton", button);
	if (err < 0) {
		FUNC0(&pdev->dev, "IRQ request failed: %d\n", err);
		return err;
	}

	err = FUNC6(button->idev);
	if (err) {
		FUNC0(&pdev->dev, "Input register failed: %d\n", err);
		return err;
	}

	FUNC2(&pdev->dev, true);

	return 0;
}