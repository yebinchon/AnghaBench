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
struct tc_keypad {int /*<<< orphan*/  keymap; struct tc3589x* tc3589x; struct input_dev* input; struct tc3589x_keypad_platform_data const* board; } ;
struct tc3589x_keypad_platform_data {int irqtype; int /*<<< orphan*/  enable_wakeup; int /*<<< orphan*/  no_autorepeat; int /*<<< orphan*/  keymap_data; } ;
struct tc3589x {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_11__ {TYPE_3__* parent; } ;
struct TYPE_10__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {int /*<<< orphan*/  evbit; int /*<<< orphan*/  keycode; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_2__ dev; int /*<<< orphan*/  name; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_I2C ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (struct tc3589x_keypad_platform_data const*) ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int FUNC1 (struct tc3589x_keypad_platform_data const*) ; 
 int /*<<< orphan*/  TC3589x_MAX_KPCOL ; 
 int /*<<< orphan*/  TC3589x_MAX_KPROW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,...) ; 
 struct tc3589x* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC7 (TYPE_3__*) ; 
 struct tc_keypad* FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct tc_keypad*) ; 
 int FUNC10 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct input_dev*,struct tc_keypad*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct input_dev*) ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct tc_keypad*) ; 
 int /*<<< orphan*/  tc3589x_keypad_close ; 
 int /*<<< orphan*/  FUNC16 (struct tc_keypad*) ; 
 int /*<<< orphan*/  tc3589x_keypad_irq ; 
 struct tc3589x_keypad_platform_data* FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  tc3589x_keypad_open ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct tc3589x *tc3589x = FUNC4(pdev->dev.parent);
	struct tc_keypad *keypad;
	struct input_dev *input;
	const struct tc3589x_keypad_platform_data *plat;
	int error, irq;

	plat = FUNC17(&pdev->dev);
	if (FUNC0(plat)) {
		FUNC3(&pdev->dev, "invalid keypad platform data\n");
		return FUNC1(plat);
	}

	irq = FUNC14(pdev, 0);
	if (irq < 0)
		return irq;

	keypad = FUNC8(&pdev->dev, sizeof(struct tc_keypad),
			      GFP_KERNEL);
	if (!keypad)
		return -ENOMEM;

	input = FUNC7(&pdev->dev);
	if (!input) {
		FUNC3(&pdev->dev, "failed to allocate input device\n");
		return -ENOMEM;
	}

	keypad->board = plat;
	keypad->input = input;
	keypad->tc3589x = tc3589x;

	input->id.bustype = BUS_I2C;
	input->name = pdev->name;
	input->dev.parent = &pdev->dev;

	input->open = tc3589x_keypad_open;
	input->close = tc3589x_keypad_close;

	error = FUNC13(plat->keymap_data, NULL,
					   TC3589x_MAX_KPROW, TC3589x_MAX_KPCOL,
					   NULL, input);
	if (error) {
		FUNC3(&pdev->dev, "Failed to build keymap\n");
		return error;
	}

	keypad->keymap = input->keycode;

	FUNC11(input, EV_MSC, MSC_SCAN);
	if (!plat->no_autorepeat)
		FUNC2(EV_REP, input->evbit);

	FUNC12(input, keypad);

	FUNC16(keypad);

	error = FUNC9(&pdev->dev, irq,
					  NULL, tc3589x_keypad_irq,
					  plat->irqtype | IRQF_ONESHOT,
					  "tc3589x-keypad", keypad);
	if (error) {
		FUNC3(&pdev->dev,
				"Could not allocate irq %d,error %d\n",
				irq, error);
		return error;
	}

	error = FUNC10(input);
	if (error) {
		FUNC3(&pdev->dev, "Could not register input device\n");
		return error;
	}

	/* let platform decide if keypad is a wakeup source or not */
	FUNC5(&pdev->dev, plat->enable_wakeup);
	FUNC6(&pdev->dev, plat->enable_wakeup);

	FUNC15(pdev, keypad);

	return 0;
}