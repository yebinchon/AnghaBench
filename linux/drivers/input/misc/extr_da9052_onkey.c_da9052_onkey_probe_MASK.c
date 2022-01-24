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
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_3__ {TYPE_2__* parent; } ;
struct input_dev {char* name; char* phys; int /*<<< orphan*/  keybit; int /*<<< orphan*/ * evbit; TYPE_1__ dev; } ;
struct da9052_onkey {int /*<<< orphan*/  work; struct da9052* da9052; struct input_dev* input; } ;
struct da9052 {TYPE_2__* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DA9052_IRQ_NONKEY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct da9052*,int /*<<< orphan*/ ,struct da9052_onkey*) ; 
 int /*<<< orphan*/  da9052_onkey_irq ; 
 int /*<<< orphan*/  da9052_onkey_work ; 
 int FUNC5 (struct da9052*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct da9052_onkey*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,...) ; 
 struct da9052* FUNC7 (int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*) ; 
 int FUNC10 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct da9052_onkey*) ; 
 struct da9052_onkey* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct da9052_onkey*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct da9052 *da9052 = FUNC7(pdev->dev.parent);
	struct da9052_onkey *onkey;
	struct input_dev *input_dev;
	int error;

	if (!da9052) {
		FUNC6(&pdev->dev, "Failed to get the driver's data\n");
		return -EINVAL;
	}

	onkey = FUNC12(sizeof(*onkey), GFP_KERNEL);
	input_dev = FUNC8();
	if (!onkey || !input_dev) {
		FUNC6(&pdev->dev, "Failed to allocate memory\n");
		error = -ENOMEM;
		goto err_free_mem;
	}

	onkey->input = input_dev;
	onkey->da9052 = da9052;
	FUNC1(&onkey->work, da9052_onkey_work);

	input_dev->name = "da9052-onkey";
	input_dev->phys = "da9052-onkey/input0";
	input_dev->dev.parent = &pdev->dev;

	input_dev->evbit[0] = FUNC0(EV_KEY);
	FUNC2(KEY_POWER, input_dev->keybit);

	error = FUNC5(onkey->da9052, DA9052_IRQ_NONKEY, "ONKEY",
			    da9052_onkey_irq, onkey);
	if (error < 0) {
		FUNC6(onkey->da9052->dev,
			"Failed to register ONKEY IRQ: %d\n", error);
		goto err_free_mem;
	}

	error = FUNC10(onkey->input);
	if (error) {
		FUNC6(&pdev->dev, "Unable to register input device, %d\n",
			error);
		goto err_free_irq;
	}

	FUNC13(pdev, onkey);
	return 0;

err_free_irq:
	FUNC4(onkey->da9052, DA9052_IRQ_NONKEY, onkey);
	FUNC3(&onkey->work);
err_free_mem:
	FUNC9(input_dev);
	FUNC11(onkey);

	return error;
}