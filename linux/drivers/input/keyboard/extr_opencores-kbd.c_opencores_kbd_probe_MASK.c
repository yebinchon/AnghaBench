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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct opencores_kbd {int* keycodes; int /*<<< orphan*/  addr; struct input_dev* input; } ;
struct TYPE_2__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* phys; int* keycode; int keycodesize; int keycodemax; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; TYPE_1__ id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  BUS_HOST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 struct input_dev* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct resource*) ; 
 struct opencores_kbd* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct opencores_kbd*) ; 
 int FUNC10 (struct input_dev*) ; 
 int /*<<< orphan*/  opencores_kbd_isr ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct input_dev *input;
	struct opencores_kbd *opencores_kbd;
	struct resource *res;
	int irq, i, error;

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC5(&pdev->dev, "missing board memory resource\n");
		return -EINVAL;
	}

	irq = FUNC11(pdev, 0);
	if (irq < 0)
		return -EINVAL;

	opencores_kbd = FUNC8(&pdev->dev, sizeof(*opencores_kbd),
				     GFP_KERNEL);
	if (!opencores_kbd)
		return -ENOMEM;

	input = FUNC6(&pdev->dev);
	if (!input) {
		FUNC5(&pdev->dev, "failed to allocate input device\n");
		return -ENOMEM;
	}

	opencores_kbd->input = input;

	opencores_kbd->addr = FUNC7(&pdev->dev, res);
	if (FUNC1(opencores_kbd->addr))
		return FUNC2(opencores_kbd->addr);

	input->name = pdev->name;
	input->phys = "opencores-kbd/input0";

	input->id.bustype = BUS_HOST;
	input->id.vendor = 0x0001;
	input->id.product = 0x0001;
	input->id.version = 0x0100;

	input->keycode = opencores_kbd->keycodes;
	input->keycodesize = sizeof(opencores_kbd->keycodes[0]);
	input->keycodemax = FUNC0(opencores_kbd->keycodes);

	FUNC4(EV_KEY, input->evbit);

	for (i = 0; i < FUNC0(opencores_kbd->keycodes); i++) {
		/*
		 * OpenCores controller happens to have scancodes match
		 * our KEY_* definitions.
		 */
		opencores_kbd->keycodes[i] = i;
		FUNC4(opencores_kbd->keycodes[i], input->keybit);
	}
	FUNC3(KEY_RESERVED, input->keybit);

	error = FUNC9(&pdev->dev, irq, &opencores_kbd_isr,
				 IRQF_TRIGGER_RISING,
				 pdev->name, opencores_kbd);
	if (error) {
		FUNC5(&pdev->dev, "unable to claim irq %d\n", irq);
		return error;
	}

	error = FUNC10(input);
	if (error) {
		FUNC5(&pdev->dev, "unable to register input device\n");
		return error;
	}

	return 0;
}