#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct pwrkey_drv_data {scalar_t__ irq; int /*<<< orphan*/  wakeup; struct input_dev* input; int /*<<< orphan*/  keycode; int /*<<< orphan*/  check_timer; int /*<<< orphan*/  snvs; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* phys; TYPE_1__ id; int /*<<< orphan*/  name; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SNVS_LPCR_DEP_EN ; 
 int /*<<< orphan*/  SNVS_LPCR_REG ; 
 int /*<<< orphan*/  SNVS_LPSR_REG ; 
 int /*<<< orphan*/  SNVS_LPSR_SPO ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,struct pwrkey_drv_data*) ; 
 struct input_dev* FUNC7 (TYPE_2__*) ; 
 struct pwrkey_drv_data* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct platform_device*) ; 
 int /*<<< orphan*/  imx_imx_snvs_check_for_events ; 
 int /*<<< orphan*/  imx_snvs_pwrkey_act ; 
 int /*<<< orphan*/  imx_snvs_pwrkey_interrupt ; 
 int FUNC10 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*,char*) ; 
 scalar_t__ FUNC13 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct pwrkey_drv_data*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct pwrkey_drv_data *pdata = NULL;
	struct input_dev *input = NULL;
	struct device_node *np;
	int error;

	/* Get SNVS register Page */
	np = pdev->dev.of_node;
	if (!np)
		return -ENODEV;

	pdata = FUNC8(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return -ENOMEM;

	pdata->snvs = FUNC18(np, "regmap");
	if (FUNC0(pdata->snvs)) {
		FUNC2(&pdev->dev, "Can't get snvs syscon\n");
		return FUNC1(pdata->snvs);
	}

	if (FUNC13(np, "linux,keycode", &pdata->keycode)) {
		pdata->keycode = KEY_POWER;
		FUNC4(&pdev->dev, "KEY_POWER without setting in dts\n");
	}

	pdata->wakeup = FUNC12(np, "wakeup-source");

	pdata->irq = FUNC14(pdev, 0);
	if (pdata->irq < 0)
		return -EINVAL;

	FUNC16(pdata->snvs, SNVS_LPCR_REG, SNVS_LPCR_DEP_EN, SNVS_LPCR_DEP_EN);

	/* clear the unexpected interrupt before driver ready */
	FUNC17(pdata->snvs, SNVS_LPSR_REG, SNVS_LPSR_SPO);

	FUNC19(&pdata->check_timer, imx_imx_snvs_check_for_events, 0);

	input = FUNC7(&pdev->dev);
	if (!input) {
		FUNC2(&pdev->dev, "failed to allocate the input device\n");
		return -ENOMEM;
	}

	input->name = pdev->name;
	input->phys = "snvs-pwrkey/input0";
	input->id.bustype = BUS_HOST;

	FUNC11(input, EV_KEY, pdata->keycode);

	/* input customer action to cancel release timer */
	error = FUNC6(&pdev->dev, imx_snvs_pwrkey_act, pdata);
	if (error) {
		FUNC2(&pdev->dev, "failed to register remove action\n");
		return error;
	}

	pdata->input = input;
	FUNC15(pdev, pdata);

	error = FUNC9(&pdev->dev, pdata->irq,
			       imx_snvs_pwrkey_interrupt,
			       0, pdev->name, pdev);

	if (error) {
		FUNC2(&pdev->dev, "interrupt not available.\n");
		return error;
	}

	error = FUNC10(input);
	if (error < 0) {
		FUNC2(&pdev->dev, "failed to register input device\n");
		return error;
	}

	FUNC5(&pdev->dev, pdata->wakeup);
	error = FUNC3(&pdev->dev, pdata->irq);
	if (error)
		FUNC2(&pdev->dev, "irq wake enable failed.\n");

	return 0;
}