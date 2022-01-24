#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct max3355_data {struct gpio_desc* id_gpiod; struct gpio_desc* edev; struct gpio_desc* shdn_gpiod; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int IRQF_NO_SUSPEND ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct gpio_desc* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct gpio_desc*) ; 
 struct gpio_desc* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct max3355_data* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int,struct max3355_data*),int,int /*<<< orphan*/ ,struct max3355_data*) ; 
 int FUNC8 (struct gpio_desc*) ; 
 int /*<<< orphan*/  max3355_cable ; 
 int /*<<< orphan*/  FUNC9 (int,struct max3355_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct max3355_data*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct max3355_data *data;
	struct gpio_desc *gpiod;
	int irq, err;

	data = FUNC6(&pdev->dev, sizeof(struct max3355_data),
			    GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	gpiod = FUNC5(&pdev->dev, "id", GPIOD_IN);
	if (FUNC0(gpiod)) {
		FUNC2(&pdev->dev, "failed to get ID_OUT GPIO\n");
		return FUNC1(gpiod);
	}
	data->id_gpiod = gpiod;

	gpiod = FUNC5(&pdev->dev, "maxim,shdn", GPIOD_OUT_HIGH);
	if (FUNC0(gpiod)) {
		FUNC2(&pdev->dev, "failed to get SHDN# GPIO\n");
		return FUNC1(gpiod);
	}
	data->shdn_gpiod = gpiod;

	data->edev = FUNC3(&pdev->dev, max3355_cable);
	if (FUNC0(data->edev)) {
		FUNC2(&pdev->dev, "failed to allocate extcon device\n");
		return FUNC1(data->edev);
	}

	err = FUNC4(&pdev->dev, data->edev);
	if (err < 0) {
		FUNC2(&pdev->dev, "failed to register extcon device\n");
		return err;
	}

	irq = FUNC8(data->id_gpiod);
	if (irq < 0) {
		FUNC2(&pdev->dev, "failed to translate ID_OUT GPIO to IRQ\n");
		return irq;
	}

	err = FUNC7(&pdev->dev, irq, NULL, max3355_id_irq,
					IRQF_ONESHOT | IRQF_NO_SUSPEND |
					IRQF_TRIGGER_RISING |
					IRQF_TRIGGER_FALLING,
					pdev->name, data);
	if (err < 0) {
		FUNC2(&pdev->dev, "failed to request ID_OUT IRQ\n");
		return err;
	}

	FUNC10(pdev, data);

	/* Perform initial detection */
	FUNC9(irq, data);

	return 0;
}