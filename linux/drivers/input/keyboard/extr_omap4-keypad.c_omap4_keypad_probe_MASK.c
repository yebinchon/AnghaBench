#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct omap4_keypad {int irq; int reg_offset; int irqreg_offset; unsigned int row_shift; unsigned int rows; scalar_t__ base; struct omap4_keypad* keymap; struct input_dev* input; int /*<<< orphan*/  cols; int /*<<< orphan*/  no_autorepeat; } ;
struct TYPE_4__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {int /*<<< orphan*/  evbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_2__ id; TYPE_1__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
#define  KBD_REVISION_OMAP4 129 
#define  KBD_REVISION_OMAP5 128 
 int /*<<< orphan*/  MSC_SCAN ; 
 scalar_t__ OMAP4_KBD_REVISION ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct omap4_keypad*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*) ; 
 int FUNC8 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*,struct omap4_keypad*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 struct omap4_keypad* FUNC13 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct omap4_keypad*) ; 
 struct omap4_keypad* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,struct omap4_keypad*,struct input_dev*) ; 
 int /*<<< orphan*/  omap4_keypad_close ; 
 int /*<<< orphan*/  omap4_keypad_irq_handler ; 
 int /*<<< orphan*/  omap4_keypad_irq_thread_fn ; 
 int /*<<< orphan*/  omap4_keypad_open ; 
 int FUNC17 (int /*<<< orphan*/ *,struct omap4_keypad*) ; 
 int FUNC18 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct omap4_keypad*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC27 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct omap4_keypad*) ; 
 int /*<<< orphan*/  FUNC28 (struct resource*) ; 

__attribute__((used)) static int FUNC29(struct platform_device *pdev)
{
	struct omap4_keypad *keypad_data;
	struct input_dev *input_dev;
	struct resource *res;
	unsigned int max_keys;
	int rev;
	int irq;
	int error;

	res = FUNC19(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC2(&pdev->dev, "no base address specified\n");
		return -EINVAL;
	}

	irq = FUNC18(pdev, 0);
	if (!irq) {
		FUNC2(&pdev->dev, "no keyboard irq assigned\n");
		return -EINVAL;
	}

	keypad_data = FUNC15(sizeof(struct omap4_keypad), GFP_KERNEL);
	if (!keypad_data) {
		FUNC2(&pdev->dev, "keypad_data memory allocation failed\n");
		return -ENOMEM;
	}

	keypad_data->irq = irq;

	error = FUNC17(&pdev->dev, keypad_data);
	if (error)
		goto err_free_keypad;

	res = FUNC26(res->start, FUNC28(res), pdev->name);
	if (!res) {
		FUNC2(&pdev->dev, "can't request mem region\n");
		error = -EBUSY;
		goto err_free_keypad;
	}

	keypad_data->base = FUNC11(res->start, FUNC28(res));
	if (!keypad_data->base) {
		FUNC2(&pdev->dev, "can't ioremap mem resource\n");
		error = -ENOMEM;
		goto err_release_mem;
	}


	/*
	 * Enable clocks for the keypad module so that we can read
	 * revision register.
	 */
	FUNC22(&pdev->dev);
	error = FUNC23(&pdev->dev);
	if (error) {
		FUNC2(&pdev->dev, "pm_runtime_get_sync() failed\n");
		goto err_unmap;
	}
	rev = FUNC0(keypad_data->base + OMAP4_KBD_REVISION);
	rev &= 0x03 << 30;
	rev >>= 30;
	switch (rev) {
	case KBD_REVISION_OMAP4:
		keypad_data->reg_offset = 0x00;
		keypad_data->irqreg_offset = 0x00;
		break;
	case KBD_REVISION_OMAP5:
		keypad_data->reg_offset = 0x10;
		keypad_data->irqreg_offset = 0x0c;
		break;
	default:
		FUNC2(&pdev->dev,
			"Keypad reports unsupported revision %d", rev);
		error = -EINVAL;
		goto err_pm_put_sync;
	}

	/* input device allocation */
	keypad_data->input = input_dev = FUNC6();
	if (!input_dev) {
		error = -ENOMEM;
		goto err_pm_put_sync;
	}

	input_dev->name = pdev->name;
	input_dev->dev.parent = &pdev->dev;
	input_dev->id.bustype = BUS_HOST;
	input_dev->id.vendor = 0x0001;
	input_dev->id.product = 0x0001;
	input_dev->id.version = 0x0001;

	input_dev->open = omap4_keypad_open;
	input_dev->close = omap4_keypad_close;

	FUNC9(input_dev, EV_MSC, MSC_SCAN);
	if (!keypad_data->no_autorepeat)
		FUNC1(EV_REP, input_dev->evbit);

	FUNC10(input_dev, keypad_data);

	keypad_data->row_shift = FUNC5(keypad_data->cols);
	max_keys = keypad_data->rows << keypad_data->row_shift;
	keypad_data->keymap = FUNC13(max_keys,
				      sizeof(keypad_data->keymap[0]),
				      GFP_KERNEL);
	if (!keypad_data->keymap) {
		FUNC2(&pdev->dev, "Not enough memory for keymap\n");
		error = -ENOMEM;
		goto err_free_input;
	}

	error = FUNC16(NULL, NULL,
					   keypad_data->rows, keypad_data->cols,
					   keypad_data->keymap, input_dev);
	if (error) {
		FUNC2(&pdev->dev, "failed to build keymap\n");
		goto err_free_keymap;
	}

	error = FUNC27(keypad_data->irq, omap4_keypad_irq_handler,
				     omap4_keypad_irq_thread_fn, IRQF_ONESHOT,
				     "omap4-keypad", keypad_data);
	if (error) {
		FUNC2(&pdev->dev, "failed to register interrupt\n");
		goto err_free_keymap;
	}

	FUNC3(&pdev->dev, true);
	FUNC24(&pdev->dev);

	error = FUNC8(keypad_data->input);
	if (error < 0) {
		FUNC2(&pdev->dev, "failed to register input device\n");
		goto err_pm_disable;
	}

	FUNC20(pdev, keypad_data);
	return 0;

err_pm_disable:
	FUNC21(&pdev->dev);
	FUNC4(keypad_data->irq, keypad_data);
err_free_keymap:
	FUNC14(keypad_data->keymap);
err_free_input:
	FUNC7(input_dev);
err_pm_put_sync:
	FUNC24(&pdev->dev);
err_unmap:
	FUNC12(keypad_data->base);
err_release_mem:
	FUNC25(res->start, FUNC28(res));
err_free_keypad:
	FUNC14(keypad_data);
	return error;
}