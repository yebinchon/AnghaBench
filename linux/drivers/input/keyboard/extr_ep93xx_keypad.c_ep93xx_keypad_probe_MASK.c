#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct matrix_keymap_data {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {int /*<<< orphan*/  evbit; TYPE_2__ dev; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; int /*<<< orphan*/  name; } ;
struct ep93xx_keypad {int /*<<< orphan*/ * mmio_base; int /*<<< orphan*/  clk; int /*<<< orphan*/  irq; TYPE_3__* pdata; int /*<<< orphan*/  keycodes; struct input_dev* input_dev; } ;
struct TYPE_6__ {int flags; struct matrix_keymap_data* keymap_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EP93XX_KEYPAD_AUTOREPEAT ; 
 int /*<<< orphan*/  EP93XX_MATRIX_COLS ; 
 int /*<<< orphan*/  EP93XX_MATRIX_ROWS ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  ep93xx_keypad_close ; 
 int /*<<< orphan*/  ep93xx_keypad_irq_handler ; 
 int /*<<< orphan*/  ep93xx_keypad_open ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct ep93xx_keypad*) ; 
 struct input_dev* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*) ; 
 int FUNC12 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct input_dev*,struct ep93xx_keypad*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct ep93xx_keypad*) ; 
 struct ep93xx_keypad* FUNC17 (int,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct matrix_keymap_data const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct input_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct ep93xx_keypad*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ep93xx_keypad*) ; 
 struct resource* FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct resource*) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct ep93xx_keypad *keypad;
	const struct matrix_keymap_data *keymap_data;
	struct input_dev *input_dev;
	struct resource *res;
	int err;

	keypad = FUNC17(sizeof(struct ep93xx_keypad), GFP_KERNEL);
	if (!keypad)
		return -ENOMEM;

	keypad->pdata = FUNC5(&pdev->dev);
	if (!keypad->pdata) {
		err = -EINVAL;
		goto failed_free;
	}

	keymap_data = keypad->pdata->keymap_data;
	if (!keymap_data) {
		err = -EINVAL;
		goto failed_free;
	}

	keypad->irq = FUNC19(pdev, 0);
	if (!keypad->irq) {
		err = -ENXIO;
		goto failed_free;
	}

	res = FUNC20(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		err = -ENXIO;
		goto failed_free;
	}

	res = FUNC24(res->start, FUNC25(res), pdev->name);
	if (!res) {
		err = -EBUSY;
		goto failed_free;
	}

	keypad->mmio_base = FUNC14(res->start, FUNC25(res));
	if (keypad->mmio_base == NULL) {
		err = -ENXIO;
		goto failed_free_mem;
	}

	err = FUNC7(pdev);
	if (err)
		goto failed_free_io;

	keypad->clk = FUNC3(&pdev->dev, NULL);
	if (FUNC0(keypad->clk)) {
		err = FUNC1(keypad->clk);
		goto failed_free_gpio;
	}

	input_dev = FUNC10();
	if (!input_dev) {
		err = -ENOMEM;
		goto failed_put_clk;
	}

	keypad->input_dev = input_dev;

	input_dev->name = pdev->name;
	input_dev->id.bustype = BUS_HOST;
	input_dev->open = ep93xx_keypad_open;
	input_dev->close = ep93xx_keypad_close;
	input_dev->dev.parent = &pdev->dev;

	err = FUNC18(keymap_data, NULL,
					 EP93XX_MATRIX_ROWS, EP93XX_MATRIX_COLS,
					 keypad->keycodes, input_dev);
	if (err)
		goto failed_free_dev;

	if (keypad->pdata->flags & EP93XX_KEYPAD_AUTOREPEAT)
		FUNC2(EV_REP, input_dev->evbit);
	FUNC13(input_dev, keypad);

	err = FUNC23(keypad->irq, ep93xx_keypad_irq_handler,
			  0, pdev->name, keypad);
	if (err)
		goto failed_free_dev;

	err = FUNC12(input_dev);
	if (err)
		goto failed_free_irq;

	FUNC21(pdev, keypad);
	FUNC6(&pdev->dev, 1);

	return 0;

failed_free_irq:
	FUNC9(keypad->irq, keypad);
failed_free_dev:
	FUNC11(input_dev);
failed_put_clk:
	FUNC4(keypad->clk);
failed_free_gpio:
	FUNC8(pdev);
failed_free_io:
	FUNC15(keypad->mmio_base);
failed_free_mem:
	FUNC22(res->start, FUNC25(res));
failed_free:
	FUNC16(keypad);
	return err;
}