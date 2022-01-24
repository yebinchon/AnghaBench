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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {char* name; char* phys; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct input_dev* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct input_dev*) ; 
 int /*<<< orphan*/  e3x0_button_press_handler ; 
 int /*<<< orphan*/  e3x0_button_release_handler ; 
 int FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct platform_device*,char*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct input_dev *input;
	int irq_press, irq_release;
	int error;

	irq_press = FUNC6(pdev, "press");
	if (irq_press < 0)
		return irq_press;

	irq_release = FUNC6(pdev, "release");
	if (irq_release < 0)
		return irq_release;

	input = FUNC2(&pdev->dev);
	if (!input)
		return -ENOMEM;

	input->name = "NI Ettus Research USRP E3x0 Button Driver";
	input->phys = "e3x0_button/input0";
	input->dev.parent = &pdev->dev;

	FUNC5(input, EV_KEY, KEY_POWER);

	error = FUNC3(&pdev->dev, irq_press,
				 e3x0_button_press_handler, 0,
				 "e3x0-button", input);
	if (error) {
		FUNC0(&pdev->dev, "Failed to request 'press' IRQ#%d: %d\n",
			irq_press, error);
		return error;
	}

	error = FUNC3(&pdev->dev, irq_release,
				 e3x0_button_release_handler, 0,
				 "e3x0-button", input);
	if (error) {
		FUNC0(&pdev->dev, "Failed to request 'release' IRQ#%d: %d\n",
			irq_release, error);
		return error;
	}

	error = FUNC4(input);
	if (error) {
		FUNC0(&pdev->dev, "Can't register input device: %d\n", error);
		return error;
	}

	FUNC1(&pdev->dev, 1);
	return 0;
}