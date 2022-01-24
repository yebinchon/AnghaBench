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
struct axp20x_pek {int irq_dbr; int irq_dbf; struct axp20x_dev* axp20x; struct input_dev* input; } ;
struct axp20x_dev {scalar_t__ variant; int /*<<< orphan*/  regmap_irqc; } ;

/* Variables and functions */
 scalar_t__ AXP288_ID ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  axp20x_pek_irq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 struct input_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,struct axp20x_pek*) ; 
 void* FUNC7 (struct platform_device*,char*) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct axp20x_pek *axp20x_pek,
					 struct platform_device *pdev)
{
	struct axp20x_dev *axp20x = axp20x_pek->axp20x;
	struct input_dev *idev;
	int error;

	axp20x_pek->irq_dbr = FUNC7(pdev, "PEK_DBR");
	if (axp20x_pek->irq_dbr < 0)
		return axp20x_pek->irq_dbr;
	axp20x_pek->irq_dbr = FUNC8(axp20x->regmap_irqc,
						  axp20x_pek->irq_dbr);

	axp20x_pek->irq_dbf = FUNC7(pdev, "PEK_DBF");
	if (axp20x_pek->irq_dbf < 0)
		return axp20x_pek->irq_dbf;
	axp20x_pek->irq_dbf = FUNC8(axp20x->regmap_irqc,
						  axp20x_pek->irq_dbf);

	axp20x_pek->input = FUNC1(&pdev->dev);
	if (!axp20x_pek->input)
		return -ENOMEM;

	idev = axp20x_pek->input;

	idev->name = "axp20x-pek";
	idev->phys = "m1kbd/input2";
	idev->dev.parent = &pdev->dev;

	FUNC5(idev, EV_KEY, KEY_POWER);

	FUNC6(idev, axp20x_pek);

	error = FUNC2(&pdev->dev, axp20x_pek->irq_dbr,
					     axp20x_pek_irq, 0,
					     "axp20x-pek-dbr", idev);
	if (error < 0) {
		FUNC0(&pdev->dev, "Failed to request dbr IRQ#%d: %d\n",
			axp20x_pek->irq_dbr, error);
		return error;
	}

	error = FUNC2(&pdev->dev, axp20x_pek->irq_dbf,
					  axp20x_pek_irq, 0,
					  "axp20x-pek-dbf", idev);
	if (error < 0) {
		FUNC0(&pdev->dev, "Failed to request dbf IRQ#%d: %d\n",
			axp20x_pek->irq_dbf, error);
		return error;
	}

	error = FUNC4(idev);
	if (error) {
		FUNC0(&pdev->dev, "Can't register input device: %d\n",
			error);
		return error;
	}

	if (axp20x_pek->axp20x->variant == AXP288_ID)
		FUNC3(axp20x_pek->irq_dbr);

	return 0;
}