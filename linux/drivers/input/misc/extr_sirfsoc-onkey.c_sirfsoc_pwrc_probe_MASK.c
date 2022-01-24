#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct sirfsoc_pwrc_drvdata {TYPE_1__* input; int /*<<< orphan*/  work; int /*<<< orphan*/  pwrc_base; } ;
struct TYPE_13__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {char* name; char* phys; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/ * evbit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,struct sirfsoc_pwrc_drvdata*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 TYPE_1__* FUNC6 (TYPE_4__*) ; 
 struct sirfsoc_pwrc_drvdata* FUNC7 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct sirfsoc_pwrc_drvdata*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct sirfsoc_pwrc_drvdata*) ; 
 int FUNC12 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sirfsoc_pwrc_close ; 
 int /*<<< orphan*/  sirfsoc_pwrc_isr ; 
 int /*<<< orphan*/  sirfsoc_pwrc_open ; 
 int /*<<< orphan*/  sirfsoc_pwrc_report_event ; 
 int /*<<< orphan*/  FUNC14 (struct sirfsoc_pwrc_drvdata*,int) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct sirfsoc_pwrc_drvdata *pwrcdrv;
	int irq;
	int error;

	pwrcdrv = FUNC7(&pdev->dev, sizeof(struct sirfsoc_pwrc_drvdata),
			       GFP_KERNEL);
	if (!pwrcdrv) {
		FUNC3(&pdev->dev, "Not enough memory for the device data\n");
		return -ENOMEM;
	}

	/*
	 * We can't use of_iomap because pwrc is not mapped in memory,
	 * the so-called base address is only offset in rtciobrg
	 */
	error = FUNC12(np, "reg", &pwrcdrv->pwrc_base);
	if (error) {
		FUNC2(&pdev->dev,
			"unable to find base address of pwrc node in dtb\n");
		return error;
	}

	pwrcdrv->input = FUNC6(&pdev->dev);
	if (!pwrcdrv->input)
		return -ENOMEM;

	pwrcdrv->input->name = "sirfsoc pwrckey";
	pwrcdrv->input->phys = "pwrc/input0";
	pwrcdrv->input->evbit[0] = FUNC0(EV_KEY);
	FUNC10(pwrcdrv->input, EV_KEY, KEY_POWER);

	FUNC1(&pwrcdrv->work, sirfsoc_pwrc_report_event);

	pwrcdrv->input->open = sirfsoc_pwrc_open;
	pwrcdrv->input->close = sirfsoc_pwrc_close;

	FUNC11(pwrcdrv->input, pwrcdrv);

	/* Make sure the device is quiesced */
	FUNC14(pwrcdrv, false);

	irq = FUNC13(pdev, 0);
	error = FUNC8(&pdev->dev, irq,
				 sirfsoc_pwrc_isr, 0,
				 "sirfsoc_pwrc_int", pwrcdrv);
	if (error) {
		FUNC2(&pdev->dev, "unable to claim irq %d, error: %d\n",
			irq, error);
		return error;
	}

	error = FUNC9(pwrcdrv->input);
	if (error) {
		FUNC2(&pdev->dev,
			"unable to register input device, error: %d\n",
			error);
		return error;
	}

	FUNC4(&pdev->dev, pwrcdrv);
	FUNC5(&pdev->dev, 1);

	return 0;
}