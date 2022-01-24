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
typedef  int u32 ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; } ;
struct imx6ul_tsc {int measure_delay_time; int pre_charge_time; int average_enable; struct input_dev* input; int /*<<< orphan*/  average_select; TYPE_2__* dev; void* adc_clk; void* tsc_clk; void* adc_regs; void* tsc_regs; void* xnur_gpio; int /*<<< orphan*/  completion; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_HOST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  adc_irq_fn ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 void* FUNC4 (TYPE_2__*,char*) ; 
 void* FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC6 (TYPE_2__*) ; 
 struct imx6ul_tsc* FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct platform_device*,int) ; 
 int FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct imx6ul_tsc*) ; 
 int FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct imx6ul_tsc*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  imx6ul_tsc_close ; 
 int /*<<< orphan*/  imx6ul_tsc_open ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct input_dev*,struct imx6ul_tsc*) ; 
 int FUNC17 (struct device_node*,char*,int*) ; 
 int FUNC18 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct imx6ul_tsc*) ; 
 int /*<<< orphan*/  tsc_irq_fn ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct imx6ul_tsc *tsc;
	struct input_dev *input_dev;
	int err;
	int tsc_irq;
	int adc_irq;
	u32 average_samples;

	tsc = FUNC7(&pdev->dev, sizeof(*tsc), GFP_KERNEL);
	if (!tsc)
		return -ENOMEM;

	input_dev = FUNC6(&pdev->dev);
	if (!input_dev)
		return -ENOMEM;

	input_dev->name = "iMX6UL Touchscreen Controller";
	input_dev->id.bustype = BUS_HOST;

	input_dev->open = imx6ul_tsc_open;
	input_dev->close = imx6ul_tsc_close;

	FUNC15(input_dev, EV_KEY, BTN_TOUCH);
	FUNC14(input_dev, ABS_X, 0, 0xFFF, 0, 0);
	FUNC14(input_dev, ABS_Y, 0, 0xFFF, 0, 0);

	FUNC16(input_dev, tsc);

	tsc->dev = &pdev->dev;
	tsc->input = input_dev;
	FUNC12(&tsc->completion);

	tsc->xnur_gpio = FUNC5(&pdev->dev, "xnur", GPIOD_IN);
	if (FUNC0(tsc->xnur_gpio)) {
		err = FUNC1(tsc->xnur_gpio);
		FUNC2(&pdev->dev,
			"failed to request GPIO tsc_X- (xnur): %d\n", err);
		return err;
	}

	tsc->tsc_regs = FUNC8(pdev, 0);
	if (FUNC0(tsc->tsc_regs)) {
		err = FUNC1(tsc->tsc_regs);
		FUNC2(&pdev->dev, "failed to remap tsc memory: %d\n", err);
		return err;
	}

	tsc->adc_regs = FUNC8(pdev, 1);
	if (FUNC0(tsc->adc_regs)) {
		err = FUNC1(tsc->adc_regs);
		FUNC2(&pdev->dev, "failed to remap adc memory: %d\n", err);
		return err;
	}

	tsc->tsc_clk = FUNC4(&pdev->dev, "tsc");
	if (FUNC0(tsc->tsc_clk)) {
		err = FUNC1(tsc->tsc_clk);
		FUNC2(&pdev->dev, "failed getting tsc clock: %d\n", err);
		return err;
	}

	tsc->adc_clk = FUNC4(&pdev->dev, "adc");
	if (FUNC0(tsc->adc_clk)) {
		err = FUNC1(tsc->adc_clk);
		FUNC2(&pdev->dev, "failed getting adc clock: %d\n", err);
		return err;
	}

	tsc_irq = FUNC18(pdev, 0);
	if (tsc_irq < 0)
		return tsc_irq;

	adc_irq = FUNC18(pdev, 1);
	if (adc_irq < 0)
		return adc_irq;

	err = FUNC10(tsc->dev, tsc_irq,
					NULL, tsc_irq_fn, IRQF_ONESHOT,
					FUNC3(&pdev->dev), tsc);
	if (err) {
		FUNC2(&pdev->dev,
			"failed requesting tsc irq %d: %d\n",
			tsc_irq, err);
		return err;
	}

	err = FUNC9(tsc->dev, adc_irq, adc_irq_fn, 0,
				FUNC3(&pdev->dev), tsc);
	if (err) {
		FUNC2(&pdev->dev,
			"failed requesting adc irq %d: %d\n",
			adc_irq, err);
		return err;
	}

	err = FUNC17(np, "measure-delay-time",
				   &tsc->measure_delay_time);
	if (err)
		tsc->measure_delay_time = 0xffff;

	err = FUNC17(np, "pre-charge-time",
				   &tsc->pre_charge_time);
	if (err)
		tsc->pre_charge_time = 0xfff;

	err = FUNC17(np, "touchscreen-average-samples",
				   &average_samples);
	if (err)
		average_samples = 1;

	switch (average_samples) {
	case 1:
		tsc->average_enable = false;
		tsc->average_select = 0; /* value unused; initialize anyway */
		break;
	case 4:
	case 8:
	case 16:
	case 32:
		tsc->average_enable = true;
		tsc->average_select = FUNC11(average_samples) - 2;
		break;
	default:
		FUNC2(&pdev->dev,
			"touchscreen-average-samples (%u) must be 1, 4, 8, 16 or 32\n",
			average_samples);
		return -EINVAL;
	}

	err = FUNC13(tsc->input);
	if (err) {
		FUNC2(&pdev->dev,
			"failed to register input device: %d\n", err);
		return err;
	}

	FUNC19(pdev, tsc);
	return 0;
}