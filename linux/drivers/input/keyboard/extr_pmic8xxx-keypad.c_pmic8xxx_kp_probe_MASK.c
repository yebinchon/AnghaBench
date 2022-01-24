#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct pmic8xxx_kp {unsigned int num_rows; unsigned int num_cols; scalar_t__ key_sense_irq; scalar_t__ key_stuck_irq; unsigned int ctrl_reg; TYPE_3__* input; int /*<<< orphan*/  regmap; int /*<<< orphan*/  stuckstate; int /*<<< orphan*/  keystate; int /*<<< orphan*/  keycodes; TYPE_2__* dev; } ;
struct TYPE_14__ {int /*<<< orphan*/  parent; struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_13__ {int version; int product; int vendor; int /*<<< orphan*/  bustype; } ;
struct TYPE_15__ {char* name; char* phys; int /*<<< orphan*/  evbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  KEYP_CTRL ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 unsigned int PM8XXX_MAX_COLS ; 
 unsigned int PM8XXX_MAX_ROWS ; 
 unsigned int PM8XXX_MIN_COLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 TYPE_3__* FUNC4 (TYPE_2__*) ; 
 struct pmic8xxx_kp* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pmic8xxx_kp*) ; 
 int FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,struct pmic8xxx_kp*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC11 (TYPE_2__*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC13 (struct device_node*,char*) ; 
 void* FUNC14 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct pmic8xxx_kp*) ; 
 int /*<<< orphan*/  pmic8xxx_kp_close ; 
 int /*<<< orphan*/  pmic8xxx_kp_irq ; 
 int /*<<< orphan*/  pmic8xxx_kp_open ; 
 int /*<<< orphan*/  pmic8xxx_kp_stuck_irq ; 
 int FUNC16 (struct pmic8xxx_kp*,struct platform_device*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	unsigned int rows, cols;
	bool repeat;
	bool wakeup;
	struct pmic8xxx_kp *kp;
	int rc;
	unsigned int ctrl_val;

	rc = FUNC11(&pdev->dev, &rows, &cols);
	if (rc)
		return rc;

	if (cols > PM8XXX_MAX_COLS || rows > PM8XXX_MAX_ROWS ||
	    cols < PM8XXX_MIN_COLS) {
		FUNC1(&pdev->dev, "invalid platform data\n");
		return -EINVAL;
	}

	repeat = !FUNC13(np, "linux,input-no-autorepeat");

	wakeup = FUNC13(np, "wakeup-source") ||
		 /* legacy name */
		 FUNC13(np, "linux,keypad-wakeup");

	kp = FUNC5(&pdev->dev, sizeof(*kp), GFP_KERNEL);
	if (!kp)
		return -ENOMEM;

	kp->regmap = FUNC2(pdev->dev.parent, NULL);
	if (!kp->regmap)
		return -ENODEV;

	FUNC15(pdev, kp);

	kp->num_rows	= rows;
	kp->num_cols	= cols;
	kp->dev		= &pdev->dev;

	kp->input = FUNC4(&pdev->dev);
	if (!kp->input) {
		FUNC1(&pdev->dev, "unable to allocate input device\n");
		return -ENOMEM;
	}

	kp->key_sense_irq = FUNC14(pdev, 0);
	if (kp->key_sense_irq < 0)
		return kp->key_sense_irq;

	kp->key_stuck_irq = FUNC14(pdev, 1);
	if (kp->key_stuck_irq < 0)
		return kp->key_stuck_irq;

	kp->input->name = "PMIC8XXX keypad";
	kp->input->phys = "pmic8xxx_keypad/input0";

	kp->input->id.bustype	= BUS_I2C;
	kp->input->id.version	= 0x0001;
	kp->input->id.product	= 0x0001;
	kp->input->id.vendor	= 0x0001;

	kp->input->open		= pmic8xxx_kp_open;
	kp->input->close	= pmic8xxx_kp_close;

	rc = FUNC10(NULL, NULL,
					PM8XXX_MAX_ROWS, PM8XXX_MAX_COLS,
					kp->keycodes, kp->input);
	if (rc) {
		FUNC1(&pdev->dev, "failed to build keymap\n");
		return rc;
	}

	if (repeat)
		FUNC0(EV_REP, kp->input->evbit);
	FUNC8(kp->input, EV_MSC, MSC_SCAN);

	FUNC9(kp->input, kp);

	/* initialize keypad state */
	FUNC12(kp->keystate, 0xff, sizeof(kp->keystate));
	FUNC12(kp->stuckstate, 0xff, sizeof(kp->stuckstate));

	rc = FUNC16(kp, pdev);
	if (rc < 0) {
		FUNC1(&pdev->dev, "unable to initialize keypad controller\n");
		return rc;
	}

	rc = FUNC6(&pdev->dev, kp->key_sense_irq,
			pmic8xxx_kp_irq, IRQF_TRIGGER_RISING, "pmic-keypad",
			kp);
	if (rc < 0) {
		FUNC1(&pdev->dev, "failed to request keypad sense irq\n");
		return rc;
	}

	rc = FUNC6(&pdev->dev, kp->key_stuck_irq,
			pmic8xxx_kp_stuck_irq, IRQF_TRIGGER_RISING,
			"pmic-keypad-stuck", kp);
	if (rc < 0) {
		FUNC1(&pdev->dev, "failed to request keypad stuck irq\n");
		return rc;
	}

	rc = FUNC17(kp->regmap, KEYP_CTRL, &ctrl_val);
	if (rc < 0) {
		FUNC1(&pdev->dev, "failed to read KEYP_CTRL register\n");
		return rc;
	}

	kp->ctrl_reg = ctrl_val;

	rc = FUNC7(kp->input);
	if (rc < 0) {
		FUNC1(&pdev->dev, "unable to register keypad input device\n");
		return rc;
	}

	FUNC3(&pdev->dev, wakeup);

	return 0;
}