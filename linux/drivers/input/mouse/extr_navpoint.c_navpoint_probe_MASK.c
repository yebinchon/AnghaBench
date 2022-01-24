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
struct ssp_device {int /*<<< orphan*/  irq; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct navpoint_platform_data {int /*<<< orphan*/  gpio; int /*<<< orphan*/  port; } ;
struct navpoint {int /*<<< orphan*/  gpio; int /*<<< orphan*/ * dev; struct input_dev* input; struct ssp_device* ssp; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; TYPE_1__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  NAVPOINT_PRESSURE_MAX ; 
 int /*<<< orphan*/  NAVPOINT_PRESSURE_MIN ; 
 int /*<<< orphan*/  NAVPOINT_X_MAX ; 
 int /*<<< orphan*/  NAVPOINT_X_MIN ; 
 int /*<<< orphan*/  NAVPOINT_Y_MAX ; 
 int /*<<< orphan*/  NAVPOINT_Y_MIN ; 
 int /*<<< orphan*/  SSCR0 ; 
 int SSCR0_SSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct navpoint_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct navpoint*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct input_dev* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*) ; 
 int FUNC11 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct input_dev*,struct navpoint*) ; 
 int /*<<< orphan*/  FUNC14 (struct navpoint*) ; 
 struct navpoint* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  navpoint_close ; 
 int /*<<< orphan*/  navpoint_irq ; 
 int /*<<< orphan*/  navpoint_open ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct navpoint*) ; 
 int /*<<< orphan*/  FUNC17 (struct ssp_device*) ; 
 int FUNC18 (struct ssp_device*,int /*<<< orphan*/ ) ; 
 struct ssp_device* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ssp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct navpoint*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	const struct navpoint_platform_data *pdata =
					FUNC3(&pdev->dev);
	struct ssp_device *ssp;
	struct input_dev *input;
	struct navpoint *navpoint;
	int error;

	if (!pdata) {
		FUNC2(&pdev->dev, "no platform data\n");
		return -EINVAL;
	}

	if (FUNC7(pdata->gpio)) {
		error = FUNC8(pdata->gpio, GPIOF_OUT_INIT_LOW,
					 "SYNAPTICS_ON");
		if (error)
			return error;
	}

	ssp = FUNC19(pdata->port, pdev->name);
	if (!ssp) {
		error = -ENODEV;
		goto err_free_gpio;
	}

	/* HaRET does not disable devices before jumping into Linux */
	if (FUNC18(ssp, SSCR0) & SSCR0_SSE) {
		FUNC20(ssp, SSCR0, 0);
		FUNC4(&pdev->dev, "ssp%d already enabled\n", pdata->port);
	}

	navpoint = FUNC15(sizeof(*navpoint), GFP_KERNEL);
	input = FUNC9();
	if (!navpoint || !input) {
		error = -ENOMEM;
		goto err_free_mem;
	}

	navpoint->ssp = ssp;
	navpoint->input = input;
	navpoint->dev = &pdev->dev;
	navpoint->gpio = pdata->gpio;

	input->name = pdev->name;
	input->dev.parent = &pdev->dev;

	FUNC0(EV_KEY, input->evbit);
	FUNC0(EV_ABS, input->evbit);
	FUNC0(BTN_LEFT, input->keybit);
	FUNC0(BTN_TOUCH, input->keybit);
	FUNC0(BTN_TOOL_FINGER, input->keybit);

	FUNC12(input, ABS_X,
			     NAVPOINT_X_MIN, NAVPOINT_X_MAX, 0, 0);
	FUNC12(input, ABS_Y,
			     NAVPOINT_Y_MIN, NAVPOINT_Y_MAX, 0, 0);
	FUNC12(input, ABS_PRESSURE,
			     NAVPOINT_PRESSURE_MIN, NAVPOINT_PRESSURE_MAX,
			     0, 0);

	input->open = navpoint_open;
	input->close = navpoint_close;

	FUNC13(input, navpoint);

	error = FUNC21(ssp->irq, navpoint_irq, 0, pdev->name, navpoint);
	if (error)
		goto err_free_mem;

	error = FUNC11(input);
	if (error)
		goto err_free_irq;

	FUNC16(pdev, navpoint);
	FUNC1(&pdev->dev, "ssp%d, irq %d\n", pdata->port, ssp->irq);

	return 0;

err_free_irq:
	FUNC5(ssp->irq, navpoint);
err_free_mem:
	FUNC10(input);
	FUNC14(navpoint);
	FUNC17(ssp);
err_free_gpio:
	if (FUNC7(pdata->gpio))
		FUNC6(pdata->gpio);

	return error;
}