#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  name; } ;
struct matrix_keymap_data {int dummy; } ;
struct TYPE_12__ {TYPE_3__* parent; } ;
struct TYPE_11__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {int /*<<< orphan*/  evbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  name; } ;
struct imx_keypad {int irq; scalar_t__* keycodes; int rows_en_mask; int cols_en_mask; int /*<<< orphan*/  clk; int /*<<< orphan*/  mmio_base; int /*<<< orphan*/  check_matrix_timer; scalar_t__ stable_count; struct input_dev* input_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ KEY_RESERVED ; 
 int /*<<< orphan*/  MATRIX_ROW_SHIFT ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int MAX_MATRIX_KEY_COLS ; 
 int MAX_MATRIX_KEY_ROWS ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 struct matrix_keymap_data* FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 struct input_dev* FUNC11 (TYPE_3__*) ; 
 struct imx_keypad* FUNC12 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct imx_keypad*) ; 
 int /*<<< orphan*/  imx_keypad_check_for_events ; 
 int /*<<< orphan*/  imx_keypad_close ; 
 int /*<<< orphan*/  FUNC15 (struct imx_keypad*) ; 
 int /*<<< orphan*/  imx_keypad_irq_handler ; 
 int /*<<< orphan*/  imx_keypad_open ; 
 int FUNC16 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct input_dev*,struct imx_keypad*) ; 
 int FUNC19 (struct matrix_keymap_data const*,int /*<<< orphan*/ *,int,int,scalar_t__*,struct input_dev*) ; 
 int FUNC20 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct imx_keypad*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	const struct matrix_keymap_data *keymap_data =
			FUNC8(&pdev->dev);
	struct imx_keypad *keypad;
	struct input_dev *input_dev;
	int irq, error, i, row, col;

	if (!keymap_data && !pdev->dev.of_node) {
		FUNC7(&pdev->dev, "no keymap defined\n");
		return -EINVAL;
	}

	irq = FUNC20(pdev, 0);
	if (irq < 0)
		return irq;

	input_dev = FUNC11(&pdev->dev);
	if (!input_dev) {
		FUNC7(&pdev->dev, "failed to allocate the input device\n");
		return -ENOMEM;
	}

	keypad = FUNC12(&pdev->dev, sizeof(*keypad), GFP_KERNEL);
	if (!keypad) {
		FUNC7(&pdev->dev, "not enough memory for driver data\n");
		return -ENOMEM;
	}

	keypad->input_dev = input_dev;
	keypad->irq = irq;
	keypad->stable_count = 0;

	FUNC22(&keypad->check_matrix_timer,
		    imx_keypad_check_for_events, 0);

	keypad->mmio_base = FUNC13(pdev, 0);
	if (FUNC0(keypad->mmio_base))
		return FUNC2(keypad->mmio_base);

	keypad->clk = FUNC10(&pdev->dev, NULL);
	if (FUNC0(keypad->clk)) {
		FUNC7(&pdev->dev, "failed to get keypad clock\n");
		return FUNC2(keypad->clk);
	}

	/* Init the Input device */
	input_dev->name = pdev->name;
	input_dev->id.bustype = BUS_HOST;
	input_dev->dev.parent = &pdev->dev;
	input_dev->open = imx_keypad_open;
	input_dev->close = imx_keypad_close;

	error = FUNC19(keymap_data, NULL,
					   MAX_MATRIX_KEY_ROWS,
					   MAX_MATRIX_KEY_COLS,
					   keypad->keycodes, input_dev);
	if (error) {
		FUNC7(&pdev->dev, "failed to build keymap\n");
		return error;
	}

	/* Search for rows and cols enabled */
	for (row = 0; row < MAX_MATRIX_KEY_ROWS; row++) {
		for (col = 0; col < MAX_MATRIX_KEY_COLS; col++) {
			i = FUNC1(row, col, MATRIX_ROW_SHIFT);
			if (keypad->keycodes[i] != KEY_RESERVED) {
				keypad->rows_en_mask |= 1 << row;
				keypad->cols_en_mask |= 1 << col;
			}
		}
	}
	FUNC6(&pdev->dev, "enabled rows mask: %x\n", keypad->rows_en_mask);
	FUNC6(&pdev->dev, "enabled cols mask: %x\n", keypad->cols_en_mask);

	FUNC3(EV_REP, input_dev->evbit);
	FUNC17(input_dev, EV_MSC, MSC_SCAN);
	FUNC18(input_dev, keypad);

	/* Ensure that the keypad will stay dormant until opened */
	error = FUNC5(keypad->clk);
	if (error)
		return error;
	FUNC15(keypad);
	FUNC4(keypad->clk);

	error = FUNC14(&pdev->dev, irq, imx_keypad_irq_handler, 0,
			    pdev->name, keypad);
	if (error) {
		FUNC7(&pdev->dev, "failed to request IRQ\n");
		return error;
	}

	/* Register the input device */
	error = FUNC16(input_dev);
	if (error) {
		FUNC7(&pdev->dev, "failed to register input device\n");
		return error;
	}

	FUNC21(pdev, keypad);
	FUNC9(&pdev->dev, 1);

	return 0;
}