#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct TYPE_10__ {TYPE_3__* parent; } ;
struct input_dev {char* phys; TYPE_2__ id; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  evbit; } ;
struct bcm_kp {scalar_t__ irq; int /*<<< orphan*/ * clk; int /*<<< orphan*/ * base; int /*<<< orphan*/  n_cols; int /*<<< orphan*/  n_rows; struct input_dev* input_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 unsigned int DEFAULT_CLK_HZ ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcm_kp_close ; 
 int /*<<< orphan*/  bcm_kp_isr_thread ; 
 int FUNC3 (struct bcm_kp*) ; 
 int /*<<< orphan*/  bcm_kp_open ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_kp*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 long FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_3__*,char*) ; 
 struct input_dev* FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_3__*,struct resource*) ; 
 struct bcm_kp* FUNC13 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bcm_kp*) ; 
 int FUNC15 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct input_dev*,struct bcm_kp*) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct input_dev*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int FUNC19 (int /*<<< orphan*/ ,char*,unsigned int*) ; 
 scalar_t__ FUNC20 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC21 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct bcm_kp *kp;
	struct input_dev *input_dev;
	struct resource *res;
	int error;

	kp = FUNC13(&pdev->dev, sizeof(*kp), GFP_KERNEL);
	if (!kp)
		return -ENOMEM;

	input_dev = FUNC11(&pdev->dev);
	if (!input_dev) {
		FUNC9(&pdev->dev, "failed to allocate the input device\n");
		return -ENOMEM;
	}

	FUNC2(EV_KEY, input_dev->evbit);

	/* Enable auto repeat feature of Linux input subsystem */
	if (FUNC18(pdev->dev.of_node, "autorepeat"))
		FUNC2(EV_REP, input_dev->evbit);

	input_dev->name = pdev->name;
	input_dev->phys = "keypad/input0";
	input_dev->dev.parent = &pdev->dev;
	input_dev->open = bcm_kp_open;
	input_dev->close = bcm_kp_close;

	input_dev->id.bustype = BUS_HOST;
	input_dev->id.vendor = 0x0001;
	input_dev->id.product = 0x0001;
	input_dev->id.version = 0x0100;

	FUNC16(input_dev, kp);

	kp->input_dev = input_dev;

	error = FUNC3(kp);
	if (error)
		return error;

	error = FUNC17(NULL, NULL,
					   kp->n_rows, kp->n_cols,
					   NULL, input_dev);
	if (error) {
		FUNC9(&pdev->dev, "failed to build keymap\n");
		return error;
	}

	/* Get the KEYPAD base address */
	res = FUNC21(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC9(&pdev->dev, "Missing keypad base address resource\n");
		return -ENODEV;
	}

	kp->base = FUNC12(&pdev->dev, res);
	if (FUNC0(kp->base))
		return FUNC1(kp->base);

	/* Enable clock */
	kp->clk = FUNC10(&pdev->dev, "peri_clk");
	if (FUNC0(kp->clk)) {
		error = FUNC1(kp->clk);
		if (error != -ENOENT) {
			if (error != -EPROBE_DEFER)
				FUNC9(&pdev->dev, "Failed to get clock\n");
			return error;
		}
		FUNC8(&pdev->dev,
			"No clock specified. Assuming it's enabled\n");
		kp->clk = NULL;
	} else {
		unsigned int desired_rate;
		long actual_rate;

		error = FUNC19(pdev->dev.of_node,
					     "clock-frequency", &desired_rate);
		if (error < 0)
			desired_rate = DEFAULT_CLK_HZ;

		actual_rate = FUNC6(kp->clk, desired_rate);
		if (actual_rate <= 0)
			return -EINVAL;

		error = FUNC7(kp->clk, actual_rate);
		if (error)
			return error;

		error = FUNC5(kp->clk);
		if (error)
			return error;
	}

	/* Put the kp into a known sane state */
	FUNC4(kp);

	kp->irq = FUNC20(pdev, 0);
	if (kp->irq < 0)
		return -EINVAL;

	error = FUNC14(&pdev->dev, kp->irq,
					  NULL, bcm_kp_isr_thread,
					  IRQF_ONESHOT, pdev->name, kp);
	if (error) {
		FUNC9(&pdev->dev, "failed to request IRQ\n");
		return error;
	}

	error = FUNC15(input_dev);
	if (error) {
		FUNC9(&pdev->dev, "failed to register input device\n");
		return error;
	}

	return 0;
}