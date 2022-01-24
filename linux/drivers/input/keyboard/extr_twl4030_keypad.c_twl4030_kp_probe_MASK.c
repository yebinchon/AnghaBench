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
typedef  int u8 ;
struct twl4030_keypad_data {scalar_t__ rows; scalar_t__ cols; int rep; struct matrix_keymap_data* keymap_data; } ;
struct twl4030_keypad {scalar_t__ n_rows; scalar_t__ n_cols; int autorepeat; int /*<<< orphan*/  irq; int /*<<< orphan*/ * dbg_dev; int /*<<< orphan*/  keymap; struct input_dev* input; } ;
struct platform_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct matrix_keymap_data {int dummy; } ;
struct TYPE_2__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; char* phys; int /*<<< orphan*/  evbit; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KEYP_IMR1 ; 
 int KEYP_IMR1_KP ; 
 int KEYP_IMR1_TO ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 scalar_t__ TWL4030_MAX_COLS ; 
 scalar_t__ TWL4030_MAX_ROWS ; 
 int TWL4030_ROW_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct twl4030_keypad_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 struct input_dev* FUNC4 (int /*<<< orphan*/ *) ; 
 struct twl4030_keypad* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct twl4030_keypad*) ; 
 int /*<<< orphan*/  do_kp_irq ; 
 int FUNC7 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct matrix_keymap_data const*,int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ,struct input_dev*) ; 
 int FUNC10 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct twl4030_keypad*) ; 
 scalar_t__ FUNC13 (struct twl4030_keypad*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct twl4030_keypad_data *pdata = FUNC2(&pdev->dev);
	const struct matrix_keymap_data *keymap_data = NULL;
	struct twl4030_keypad *kp;
	struct input_dev *input;
	u8 reg;
	int error;

	kp = FUNC5(&pdev->dev, sizeof(*kp), GFP_KERNEL);
	if (!kp)
		return -ENOMEM;

	input = FUNC4(&pdev->dev);
	if (!input)
		return -ENOMEM;

	/* get the debug device */
	kp->dbg_dev		= &pdev->dev;
	kp->input		= input;

	/* setup input device */
	input->name		= "TWL4030 Keypad";
	input->phys		= "twl4030_keypad/input0";

	input->id.bustype	= BUS_HOST;
	input->id.vendor	= 0x0001;
	input->id.product	= 0x0001;
	input->id.version	= 0x0003;

	if (pdata) {
		if (!pdata->rows || !pdata->cols || !pdata->keymap_data) {
			FUNC1(&pdev->dev, "Missing platform_data\n");
			return -EINVAL;
		}

		kp->n_rows = pdata->rows;
		kp->n_cols = pdata->cols;
		kp->autorepeat = pdata->rep;
		keymap_data = pdata->keymap_data;
	} else {
		error = FUNC10(&pdev->dev, &kp->n_rows,
						       &kp->n_cols);
		if (error)
			return error;

		kp->autorepeat = true;
	}

	if (kp->n_rows > TWL4030_MAX_ROWS || kp->n_cols > TWL4030_MAX_COLS) {
		FUNC1(&pdev->dev,
			"Invalid rows/cols amount specified in platform/devicetree data\n");
		return -EINVAL;
	}

	kp->irq = FUNC11(pdev, 0);
	if (!kp->irq) {
		FUNC1(&pdev->dev, "no keyboard irq assigned\n");
		return -EINVAL;
	}

	error = FUNC9(keymap_data, NULL,
					   TWL4030_MAX_ROWS,
					   1 << TWL4030_ROW_SHIFT,
					   kp->keymap, input);
	if (error) {
		FUNC1(kp->dbg_dev, "Failed to build keymap\n");
		return error;
	}

	FUNC8(input, EV_MSC, MSC_SCAN);
	/* Enable auto repeat feature of Linux input subsystem */
	if (kp->autorepeat)
		FUNC0(EV_REP, input->evbit);

	error = FUNC7(input);
	if (error) {
		FUNC1(kp->dbg_dev,
			"Unable to register twl4030 keypad device\n");
		return error;
	}

	error = FUNC12(kp);
	if (error)
		return error;

	/*
	 * This ISR will always execute in kernel thread context because of
	 * the need to access the TWL4030 over the I2C bus.
	 *
	 * NOTE:  we assume this host is wired to TWL4040 INT1, not INT2 ...
	 */
	error = FUNC6(&pdev->dev, kp->irq, NULL, do_kp_irq,
					  0, pdev->name, kp);
	if (error) {
		FUNC3(kp->dbg_dev, "request_irq failed for irq no=%d: %d\n",
			kp->irq, error);
		return error;
	}

	/* Enable KP and TO interrupts now. */
	reg = (u8) ~(KEYP_IMR1_KP | KEYP_IMR1_TO);
	if (FUNC13(kp, reg, KEYP_IMR1)) {
		/* mask all events - we don't care about the result */
		(void) FUNC13(kp, 0xff, KEYP_IMR1);
		return -EIO;
	}

	return 0;
}