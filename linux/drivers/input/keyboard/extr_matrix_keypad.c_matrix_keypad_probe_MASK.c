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
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct matrix_keypad_platform_data {int /*<<< orphan*/  wakeup; int /*<<< orphan*/  no_autorepeat; int /*<<< orphan*/  num_col_gpios; int /*<<< orphan*/  num_row_gpios; int /*<<< orphan*/  keymap_data; } ;
struct matrix_keypad {int stopped; struct input_dev* input_dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  work; int /*<<< orphan*/  row_shift; struct matrix_keypad_platform_data const* pdata; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {int /*<<< orphan*/  evbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct matrix_keypad_platform_data const*) ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int FUNC2 (struct matrix_keypad_platform_data const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct matrix_keypad_platform_data* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*) ; 
 int FUNC10 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct input_dev*,struct matrix_keypad*) ; 
 int /*<<< orphan*/  FUNC13 (struct matrix_keypad*) ; 
 struct matrix_keypad* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct input_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct matrix_keypad*) ; 
 int FUNC17 (struct platform_device*,struct matrix_keypad*) ; 
 struct matrix_keypad_platform_data* FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  matrix_keypad_scan ; 
 int /*<<< orphan*/  matrix_keypad_start ; 
 int /*<<< orphan*/  matrix_keypad_stop ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct matrix_keypad*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	const struct matrix_keypad_platform_data *pdata;
	struct matrix_keypad *keypad;
	struct input_dev *input_dev;
	int err;

	pdata = FUNC5(&pdev->dev);
	if (!pdata) {
		pdata = FUNC18(&pdev->dev);
		if (FUNC1(pdata))
			return FUNC2(pdata);
	} else if (!pdata->keymap_data) {
		FUNC4(&pdev->dev, "no keymap data defined\n");
		return -EINVAL;
	}

	keypad = FUNC14(sizeof(struct matrix_keypad), GFP_KERNEL);
	input_dev = FUNC8();
	if (!keypad || !input_dev) {
		err = -ENOMEM;
		goto err_free_mem;
	}

	keypad->input_dev = input_dev;
	keypad->pdata = pdata;
	keypad->row_shift = FUNC7(pdata->num_col_gpios);
	keypad->stopped = true;
	FUNC0(&keypad->work, matrix_keypad_scan);
	FUNC20(&keypad->lock);

	input_dev->name		= pdev->name;
	input_dev->id.bustype	= BUS_HOST;
	input_dev->dev.parent	= &pdev->dev;
	input_dev->open		= matrix_keypad_start;
	input_dev->close	= matrix_keypad_stop;

	err = FUNC15(pdata->keymap_data, NULL,
					 pdata->num_row_gpios,
					 pdata->num_col_gpios,
					 NULL, input_dev);
	if (err) {
		FUNC4(&pdev->dev, "failed to build keymap\n");
		goto err_free_mem;
	}

	if (!pdata->no_autorepeat)
		FUNC3(EV_REP, input_dev->evbit);
	FUNC11(input_dev, EV_MSC, MSC_SCAN);
	FUNC12(input_dev, keypad);

	err = FUNC17(pdev, keypad);
	if (err)
		goto err_free_mem;

	err = FUNC10(keypad->input_dev);
	if (err)
		goto err_free_gpio;

	FUNC6(&pdev->dev, pdata->wakeup);
	FUNC19(pdev, keypad);

	return 0;

err_free_gpio:
	FUNC16(keypad);
err_free_mem:
	FUNC9(input_dev);
	FUNC13(keypad);
	return err;
}