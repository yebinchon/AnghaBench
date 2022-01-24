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
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pcf50633_input {int /*<<< orphan*/  pcf; struct input_dev* input_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int* evbit; int /*<<< orphan*/  keybit; TYPE_2__ id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_PWR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  PCF50633_IRQ_ONKEYF ; 
 int /*<<< orphan*/  PCF50633_IRQ_ONKEYR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pcf50633_input*) ; 
 struct pcf50633_input* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcf50633_input_irq ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pcf50633_input*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct pcf50633_input*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct pcf50633_input *input;
	struct input_dev *input_dev;
	int ret;


	input = FUNC6(sizeof(*input), GFP_KERNEL);
	if (!input)
		return -ENOMEM;

	input_dev = FUNC2();
	if (!input_dev) {
		FUNC5(input);
		return -ENOMEM;
	}

	FUNC8(pdev, input);
	input->pcf = FUNC1(pdev->dev.parent);
	input->input_dev = input_dev;

	input_dev->name = "PCF50633 PMU events";
	input_dev->id.bustype = BUS_I2C;
	input_dev->evbit[0] = FUNC0(EV_KEY) | FUNC0(EV_PWR);
	FUNC9(KEY_POWER, input_dev->keybit);

	ret = FUNC4(input_dev);
	if (ret) {
		FUNC3(input_dev);
		FUNC5(input);
		return ret;
	}
	FUNC7(input->pcf, PCF50633_IRQ_ONKEYR,
				pcf50633_input_irq, input);
	FUNC7(input->pcf, PCF50633_IRQ_ONKEYF,
				pcf50633_input_irq, input);

	return 0;
}