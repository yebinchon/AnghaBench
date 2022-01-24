#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct input_dev {char* phys; char* name; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  KEY_RESTART ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int) ; 
 struct input_dev* FUNC3 (struct device*) ; 
 int FUNC4 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct input_dev*) ; 
 TYPE_1__* hi65xx_irq_info ; 
 int FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct input_dev *input;
	int irq, i, error;

	input = FUNC3(dev);
	if (!input) {
		FUNC1(dev, "failed to allocate input device\n");
		return -ENOMEM;
	}

	input->phys = "hisi_on/input0";
	input->name = "HISI 65xx PowerOn Key";

	FUNC6(input, EV_KEY, KEY_POWER);
	FUNC6(input, EV_KEY, KEY_RESTART);

	for (i = 0; i < FUNC0(hi65xx_irq_info); i++) {

		irq = FUNC7(pdev, hi65xx_irq_info[i].name);
		if (irq < 0)
			return irq;

		error = FUNC4(dev, irq,
						     hi65xx_irq_info[i].handler,
						     IRQF_ONESHOT,
						     hi65xx_irq_info[i].name,
						     input);
		if (error < 0) {
			FUNC1(dev, "couldn't request irq %s: %d\n",
				hi65xx_irq_info[i].name, error);
			return error;
		}
	}

	error = FUNC5(input);
	if (error) {
		FUNC1(dev, "failed to register input device: %d\n", error);
		return error;
	}

	FUNC2(dev, 1);

	return 0;
}