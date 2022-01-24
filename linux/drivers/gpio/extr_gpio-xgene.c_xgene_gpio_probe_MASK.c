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
struct TYPE_2__ {int base; int /*<<< orphan*/  label; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  get_direction; int /*<<< orphan*/ * parent; int /*<<< orphan*/  ngpio; } ;
struct xgene_gpio {TYPE_1__ chip; int /*<<< orphan*/  lock; int /*<<< orphan*/  base; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  XGENE_MAX_GPIOS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,struct xgene_gpio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xgene_gpio* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct xgene_gpio*) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xgene_gpio_dir_in ; 
 int /*<<< orphan*/  xgene_gpio_dir_out ; 
 int /*<<< orphan*/  xgene_gpio_get ; 
 int /*<<< orphan*/  xgene_gpio_get_direction ; 
 int /*<<< orphan*/  xgene_gpio_set ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct resource *res;
	struct xgene_gpio *gpio;
	int err = 0;

	gpio = FUNC5(&pdev->dev, sizeof(*gpio), GFP_KERNEL);
	if (!gpio) {
		err = -ENOMEM;
		goto err;
	}

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		err = -EINVAL;
		goto err;
	}

	gpio->base = FUNC4(&pdev->dev, res->start,
							FUNC8(res));
	if (!gpio->base) {
		err = -ENOMEM;
		goto err;
	}

	gpio->chip.ngpio = XGENE_MAX_GPIOS;

	FUNC9(&gpio->lock);
	gpio->chip.parent = &pdev->dev;
	gpio->chip.get_direction = xgene_gpio_get_direction;
	gpio->chip.direction_input = xgene_gpio_dir_in;
	gpio->chip.direction_output = xgene_gpio_dir_out;
	gpio->chip.get = xgene_gpio_get;
	gpio->chip.set = xgene_gpio_set;
	gpio->chip.label = FUNC2(&pdev->dev);
	gpio->chip.base = -1;

	FUNC7(pdev, gpio);

	err = FUNC3(&pdev->dev, &gpio->chip, gpio);
	if (err) {
		FUNC0(&pdev->dev,
			"failed to register gpiochip.\n");
		goto err;
	}

	FUNC1(&pdev->dev, "X-Gene GPIO driver registered.\n");
	return 0;
err:
	FUNC0(&pdev->dev, "X-Gene GPIO driver registration failed.\n");
	return err;
}