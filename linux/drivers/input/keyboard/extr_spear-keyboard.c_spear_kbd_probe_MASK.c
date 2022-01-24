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
struct spear_kbd {int irq; int /*<<< orphan*/  clk; scalar_t__ rep; int /*<<< orphan*/  keycodes; int /*<<< orphan*/  io_base; int /*<<< orphan*/  suspended_rate; int /*<<< orphan*/  mode; struct input_dev* input; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct matrix_keymap_data {int dummy; } ;
struct kbd_platform_data {int /*<<< orphan*/  suspended_rate; scalar_t__ rep; int /*<<< orphan*/  mode; struct matrix_keymap_data* keymap; } ;
struct TYPE_2__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; char* phys; int /*<<< orphan*/  evbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  NUM_COLS ; 
 int /*<<< orphan*/  NUM_ROWS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct kbd_platform_data* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct input_dev* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct resource*) ; 
 struct spear_kbd* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct spear_kbd*) ; 
 int FUNC13 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct input_dev*,struct spear_kbd*) ; 
 int FUNC16 (struct matrix_keymap_data const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct input_dev*) ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct spear_kbd*) ; 
 int /*<<< orphan*/  spear_kbd_close ; 
 int /*<<< orphan*/  spear_kbd_interrupt ; 
 int /*<<< orphan*/  spear_kbd_open ; 
 int FUNC20 (struct platform_device*,struct spear_kbd*) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct kbd_platform_data *pdata = FUNC6(&pdev->dev);
	const struct matrix_keymap_data *keymap = pdata ? pdata->keymap : NULL;
	struct spear_kbd *kbd;
	struct input_dev *input_dev;
	struct resource *res;
	int irq;
	int error;

	irq = FUNC17(pdev, 0);
	if (irq < 0)
		return irq;

	kbd = FUNC11(&pdev->dev, sizeof(*kbd), GFP_KERNEL);
	if (!kbd) {
		FUNC5(&pdev->dev, "not enough memory for driver data\n");
		return -ENOMEM;
	}

	input_dev = FUNC9(&pdev->dev);
	if (!input_dev) {
		FUNC5(&pdev->dev, "unable to allocate input device\n");
		return -ENOMEM;
	}

	kbd->input = input_dev;
	kbd->irq = irq;

	if (!pdata) {
		error = FUNC20(pdev, kbd);
		if (error)
			return error;
	} else {
		kbd->mode = pdata->mode;
		kbd->rep = pdata->rep;
		kbd->suspended_rate = pdata->suspended_rate;
	}

	res = FUNC18(pdev, IORESOURCE_MEM, 0);
	kbd->io_base = FUNC10(&pdev->dev, res);
	if (FUNC0(kbd->io_base))
		return FUNC1(kbd->io_base);

	kbd->clk = FUNC8(&pdev->dev, NULL);
	if (FUNC0(kbd->clk))
		return FUNC1(kbd->clk);

	input_dev->name = "Spear Keyboard";
	input_dev->phys = "keyboard/input0";
	input_dev->id.bustype = BUS_HOST;
	input_dev->id.vendor = 0x0001;
	input_dev->id.product = 0x0001;
	input_dev->id.version = 0x0100;
	input_dev->open = spear_kbd_open;
	input_dev->close = spear_kbd_close;

	error = FUNC16(keymap, NULL, NUM_ROWS, NUM_COLS,
					   kbd->keycodes, input_dev);
	if (error) {
		FUNC5(&pdev->dev, "Failed to build keymap\n");
		return error;
	}

	if (kbd->rep)
		FUNC2(EV_REP, input_dev->evbit);
	FUNC14(input_dev, EV_MSC, MSC_SCAN);

	FUNC15(input_dev, kbd);

	error = FUNC12(&pdev->dev, irq, spear_kbd_interrupt, 0,
			"keyboard", kbd);
	if (error) {
		FUNC5(&pdev->dev, "request_irq failed\n");
		return error;
	}

	error = FUNC3(kbd->clk);
	if (error)
		return error;

	error = FUNC13(input_dev);
	if (error) {
		FUNC5(&pdev->dev, "Unable to register keyboard device\n");
		FUNC4(kbd->clk);
		return error;
	}

	FUNC7(&pdev->dev, 1);
	FUNC19(pdev, kbd);

	return 0;
}