#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct nspire_keypad {scalar_t__ active_low; int /*<<< orphan*/  scan_interval; int /*<<< orphan*/  row_delay; struct input_dev* input; int /*<<< orphan*/  reg_base; int /*<<< orphan*/  clk; int /*<<< orphan*/  row_shift; } ;
struct TYPE_9__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int /*<<< orphan*/  evbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEYPAD_BITMASK_COLS ; 
 int /*<<< orphan*/  KEYPAD_BITMASK_ROWS ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct input_dev* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct resource*) ; 
 struct nspire_keypad* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct nspire_keypad*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct input_dev*,struct nspire_keypad*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct input_dev*) ; 
 int /*<<< orphan*/  nspire_keypad_close ; 
 int /*<<< orphan*/  nspire_keypad_irq ; 
 int /*<<< orphan*/  nspire_keypad_open ; 
 scalar_t__ FUNC15 (struct device_node const*,char*) ; 
 int FUNC16 (struct device_node const*,char*,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	const struct device_node *of_node = pdev->dev.of_node;
	struct nspire_keypad *keypad;
	struct input_dev *input;
	struct resource *res;
	int irq;
	int error;

	irq = FUNC17(pdev, 0);
	if (irq < 0)
		return -EINVAL;

	keypad = FUNC8(&pdev->dev, sizeof(struct nspire_keypad),
			      GFP_KERNEL);
	if (!keypad) {
		FUNC4(&pdev->dev, "failed to allocate keypad memory\n");
		return -ENOMEM;
	}

	keypad->row_shift = FUNC10(KEYPAD_BITMASK_COLS);

	error = FUNC16(of_node, "scan-interval",
				     &keypad->scan_interval);
	if (error) {
		FUNC4(&pdev->dev, "failed to get scan-interval\n");
		return error;
	}

	error = FUNC16(of_node, "row-delay",
				     &keypad->row_delay);
	if (error) {
		FUNC4(&pdev->dev, "failed to get row-delay\n");
		return error;
	}

	keypad->active_low = FUNC15(of_node, "active-low");

	keypad->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(keypad->clk)) {
		FUNC4(&pdev->dev, "unable to get clock\n");
		return FUNC1(keypad->clk);
	}

	res = FUNC18(pdev, IORESOURCE_MEM, 0);
	keypad->reg_base = FUNC7(&pdev->dev, res);
	if (FUNC0(keypad->reg_base))
		return FUNC1(keypad->reg_base);

	keypad->input = input = FUNC6(&pdev->dev);
	if (!input) {
		FUNC4(&pdev->dev, "failed to allocate input device\n");
		return -ENOMEM;
	}

	FUNC13(input, keypad);

	input->id.bustype = BUS_HOST;
	input->name = "nspire-keypad";
	input->open = nspire_keypad_open;
	input->close = nspire_keypad_close;

	FUNC2(EV_KEY, input->evbit);
	FUNC2(EV_REP, input->evbit);
	FUNC12(input, EV_MSC, MSC_SCAN);

	error = FUNC14(NULL, NULL,
					   KEYPAD_BITMASK_ROWS,
					   KEYPAD_BITMASK_COLS,
					   NULL, input);
	if (error) {
		FUNC4(&pdev->dev, "building keymap failed\n");
		return error;
	}

	error = FUNC9(&pdev->dev, irq, nspire_keypad_irq, 0,
				 "nspire_keypad", keypad);
	if (error) {
		FUNC4(&pdev->dev, "allocate irq %d failed\n", irq);
		return error;
	}

	error = FUNC11(input);
	if (error) {
		FUNC4(&pdev->dev,
			"unable to register input device: %d\n", error);
		return error;
	}

	FUNC3(&pdev->dev,
		"TI-NSPIRE keypad at %pR (scan_interval=%uus, row_delay=%uus%s)\n",
		res, keypad->row_delay, keypad->scan_interval,
		keypad->active_low ? ", active_low" : "");

	return 0;
}