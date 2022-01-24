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
struct TYPE_2__ {int product; int /*<<< orphan*/  version; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; char* phys; TYPE_1__ id; } ;
struct dm355evm_keys {struct input_dev* input; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_I2C ; 
 int /*<<< orphan*/  DM355EVM_MSP_FIRMREV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct input_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 struct dm355evm_keys* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct dm355evm_keys*) ; 
 int /*<<< orphan*/  dm355evm_keys ; 
 int /*<<< orphan*/  dm355evm_keys_irq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct input_dev*) ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct dm355evm_keys	*keys;
	struct input_dev	*input;
	int			irq;
	int			error;

	keys = FUNC2(&pdev->dev, sizeof (*keys), GFP_KERNEL);
	if (!keys)
		return -ENOMEM;

	input = FUNC1(&pdev->dev);
	if (!input)
		return -ENOMEM;

	keys->dev = &pdev->dev;
	keys->input = input;

	input->name = "DM355 EVM Controls";
	input->phys = "dm355evm/input0";

	input->id.bustype = BUS_I2C;
	input->id.product = 0x0355;
	input->id.version = FUNC4(DM355EVM_MSP_FIRMREV);

	error = FUNC7(input, dm355evm_keys, NULL);
	if (error)
		return error;

	/* REVISIT:  flush the event queue? */

	/* set up "threaded IRQ handler" */
	irq = FUNC6(pdev, 0);
	if (irq < 0)
		return irq;

	error = FUNC3(&pdev->dev, irq,
					  NULL, dm355evm_keys_irq,
					  IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					  FUNC0(&pdev->dev), keys);
	if (error)
		return error;

	/* register */
	error = FUNC5(input);
	if (error)
		return error;

	return 0;
}