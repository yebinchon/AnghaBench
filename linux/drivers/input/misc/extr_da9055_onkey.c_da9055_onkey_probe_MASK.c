#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {TYPE_2__* parent; } ;
struct input_dev {char* name; char* phys; int /*<<< orphan*/  keybit; int /*<<< orphan*/ * evbit; TYPE_1__ dev; } ;
struct da9055_onkey {int /*<<< orphan*/  work; struct da9055* da9055; struct input_dev* input; } ;
struct da9055 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_HIGH ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  da9055_onkey_irq ; 
 int /*<<< orphan*/  da9055_onkey_work ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 struct da9055* FUNC5 (int /*<<< orphan*/ ) ; 
 struct da9055_onkey* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,struct da9055_onkey*) ; 
 struct input_dev* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*) ; 
 int FUNC10 (struct input_dev*) ; 
 int FUNC11 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct da9055_onkey*) ; 
 int FUNC13 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct da9055_onkey*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct da9055 *da9055 = FUNC5(pdev->dev.parent);
	struct da9055_onkey *onkey;
	struct input_dev *input_dev;
	int irq, err;

	irq = FUNC11(pdev, "ONKEY");
	if (irq < 0)
		return -EINVAL;

	onkey = FUNC6(&pdev->dev, sizeof(*onkey), GFP_KERNEL);
	if (!onkey) {
		FUNC4(&pdev->dev, "Failed to allocate memory\n");
		return -ENOMEM;
	}

	input_dev = FUNC8();
	if (!input_dev) {
		FUNC4(&pdev->dev, "Failed to allocate memory\n");
		return -ENOMEM;
	}

	onkey->input = input_dev;
	onkey->da9055 = da9055;
	input_dev->name = "da9055-onkey";
	input_dev->phys = "da9055-onkey/input0";
	input_dev->dev.parent = &pdev->dev;

	input_dev->evbit[0] = FUNC0(EV_KEY);
	FUNC2(KEY_POWER, input_dev->keybit);

	FUNC1(&onkey->work, da9055_onkey_work);

	err = FUNC13(irq, NULL, da9055_onkey_irq,
				   IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
				   "ONKEY", onkey);
	if (err < 0) {
		FUNC4(&pdev->dev,
			"Failed to register ONKEY IRQ %d, error = %d\n",
			irq, err);
		goto err_free_input;
	}

	err = FUNC10(input_dev);
	if (err) {
		FUNC4(&pdev->dev, "Unable to register input device, %d\n",
			err);
		goto err_free_irq;
	}

	FUNC12(pdev, onkey);

	return 0;

err_free_irq:
	FUNC7(irq, onkey);
	FUNC3(&onkey->work);
err_free_input:
	FUNC9(input_dev);

	return err;
}