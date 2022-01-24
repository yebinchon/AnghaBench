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
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_12__ {int /*<<< orphan*/  fuzz_y; int /*<<< orphan*/  max_y; int /*<<< orphan*/  fuzz_x; int /*<<< orphan*/  max_x; } ;
struct iproc_ts_priv {struct input_dev* idev; TYPE_3__ cfg_params; int /*<<< orphan*/  pen_status; struct platform_device* pdev; int /*<<< orphan*/  tsc_clk; int /*<<< orphan*/  regmap; } ;
struct TYPE_11__ {scalar_t__ version; scalar_t__ product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct TYPE_10__ {TYPE_4__* parent; } ;
struct input_dev {int* evbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  keybit; TYPE_2__ id; TYPE_1__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPROC_TS_NAME ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PEN_UP_STATUS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERIO_UNKNOWN ; 
 int /*<<< orphan*/  X_MIN ; 
 int /*<<< orphan*/  Y_MIN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*) ; 
 struct input_dev* FUNC6 (TYPE_4__*) ; 
 struct iproc_ts_priv* FUNC7 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct platform_device*) ; 
 int FUNC9 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*,struct iproc_ts_priv*) ; 
 int FUNC12 (TYPE_4__*,struct iproc_ts_priv*) ; 
 int /*<<< orphan*/  iproc_touchscreen_interrupt ; 
 int /*<<< orphan*/  iproc_ts_start ; 
 int /*<<< orphan*/  iproc_ts_stop ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct iproc_ts_priv*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct iproc_ts_priv *priv;
	struct input_dev *idev;
	int irq;
	int error;

	priv = FUNC7(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	/* touchscreen controller memory mapped regs via syscon*/
	priv->regmap = FUNC15(pdev->dev.of_node,
							"ts_syscon");
	if (FUNC1(priv->regmap)) {
		error = FUNC2(priv->regmap);
		FUNC4(&pdev->dev, "unable to map I/O memory:%d\n", error);
		return error;
	}

	priv->tsc_clk = FUNC5(&pdev->dev, "tsc_clk");
	if (FUNC1(priv->tsc_clk)) {
		error = FUNC2(priv->tsc_clk);
		FUNC4(&pdev->dev,
			"failed getting clock tsc_clk: %d\n", error);
		return error;
	}

	priv->pdev = pdev;
	error = FUNC12(&pdev->dev, priv);
	if (error) {
		FUNC4(&pdev->dev, "get_tsc_config failed: %d\n", error);
		return error;
	}

	idev = FUNC6(&pdev->dev);
	if (!idev) {
		FUNC4(&pdev->dev, "failed to allocate input device\n");
		return -ENOMEM;
	}

	priv->idev = idev;
	priv->pen_status = PEN_UP_STATUS;

	/* Set input device info  */
	idev->name = IPROC_TS_NAME;
	idev->dev.parent = &pdev->dev;

	idev->id.bustype = BUS_HOST;
	idev->id.vendor = SERIO_UNKNOWN;
	idev->id.product = 0;
	idev->id.version = 0;

	idev->evbit[0] = FUNC0(EV_KEY) | FUNC0(EV_ABS);
	FUNC3(BTN_TOUCH, idev->keybit);

	FUNC10(idev, ABS_X, X_MIN, priv->cfg_params.max_x,
			     priv->cfg_params.fuzz_x, 0);
	FUNC10(idev, ABS_Y, Y_MIN, priv->cfg_params.max_y,
			     priv->cfg_params.fuzz_y, 0);

	idev->open = iproc_ts_start;
	idev->close = iproc_ts_stop;

	FUNC11(idev, priv);
	FUNC14(pdev, priv);

	/* get interrupt */
	irq = FUNC13(pdev, 0);
	if (irq < 0)
		return irq;

	error = FUNC8(&pdev->dev, irq,
				 iproc_touchscreen_interrupt,
				 IRQF_SHARED, IPROC_TS_NAME, pdev);
	if (error)
		return error;

	error = FUNC9(priv->idev);
	if (error) {
		FUNC4(&pdev->dev,
			"failed to register input device: %d\n", error);
		return error;
	}

	return 0;
}