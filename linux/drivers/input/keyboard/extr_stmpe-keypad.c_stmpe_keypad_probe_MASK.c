#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct stmpe_keypad {struct input_dev* input; int /*<<< orphan*/  no_autorepeat; int /*<<< orphan*/  keymap; int /*<<< orphan*/  scan_count; int /*<<< orphan*/  debounce_ms; int /*<<< orphan*/ * variant; struct stmpe* stmpe; } ;
struct stmpe {size_t partnum; } ;
struct TYPE_10__ {struct device_node* of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_9__ {TYPE_3__* parent; } ;
struct TYPE_8__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int /*<<< orphan*/  evbit; TYPE_2__ dev; TYPE_1__ id; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_I2C ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int) ; 
 struct stmpe* FUNC2 (int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC3 (TYPE_3__*) ; 
 struct stmpe_keypad* FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct stmpe_keypad*) ; 
 int FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct input_dev*) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct stmpe_keypad*) ; 
 int FUNC14 (struct stmpe_keypad*) ; 
 int /*<<< orphan*/  FUNC15 (struct stmpe_keypad*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stmpe_keypad_irq ; 
 int /*<<< orphan*/ * stmpe_keypad_variants ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct stmpe *stmpe = FUNC2(pdev->dev.parent);
	struct device_node *np = pdev->dev.of_node;
	struct stmpe_keypad *keypad;
	struct input_dev *input;
	u32 rows;
	u32 cols;
	int error;
	int irq;

	irq = FUNC12(pdev, 0);
	if (irq < 0)
		return irq;

	keypad = FUNC4(&pdev->dev, sizeof(struct stmpe_keypad),
			      GFP_KERNEL);
	if (!keypad)
		return -ENOMEM;

	keypad->stmpe = stmpe;
	keypad->variant = &stmpe_keypad_variants[stmpe->partnum];

	FUNC11(np, "debounce-interval", &keypad->debounce_ms);
	FUNC11(np, "st,scan-count", &keypad->scan_count);
	keypad->no_autorepeat = FUNC10(np, "st,no-autorepeat");

	input = FUNC3(&pdev->dev);
	if (!input)
		return -ENOMEM;

	input->name = "STMPE keypad";
	input->id.bustype = BUS_I2C;
	input->dev.parent = &pdev->dev;

	error = FUNC9(&pdev->dev, &rows, &cols);
	if (error)
		return error;

	error = FUNC8(NULL, NULL, rows, cols,
					   keypad->keymap, input);
	if (error)
		return error;

	FUNC7(input, EV_MSC, MSC_SCAN);
	if (!keypad->no_autorepeat)
		FUNC0(EV_REP, input->evbit);

	FUNC15(keypad, rows, cols);

	keypad->input = input;

	error = FUNC14(keypad);
	if (error < 0)
		return error;

	error = FUNC5(&pdev->dev, irq,
					  NULL, stmpe_keypad_irq,
					  IRQF_ONESHOT, "stmpe-keypad", keypad);
	if (error) {
		FUNC1(&pdev->dev, "unable to get irq: %d\n", error);
		return error;
	}

	error = FUNC6(input);
	if (error) {
		FUNC1(&pdev->dev,
			"unable to register input device: %d\n", error);
		return error;
	}

	FUNC13(pdev, keypad);

	return 0;
}