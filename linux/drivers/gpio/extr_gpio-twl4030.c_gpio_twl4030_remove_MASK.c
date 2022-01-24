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
struct twl4030_gpio_platform_data {int (* teardown ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct gpio_twl4030_priv {TYPE_1__ gpio_chip; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  TWL4030_GPIO_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct twl4030_gpio_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 () ; 
 struct gpio_twl4030_priv* FUNC5 (struct platform_device*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct twl4030_gpio_platform_data *pdata = FUNC2(&pdev->dev);
	struct gpio_twl4030_priv *priv = FUNC5(pdev);
	int status;

	if (pdata && pdata->teardown) {
		status = pdata->teardown(&pdev->dev, priv->gpio_chip.base,
					 TWL4030_GPIO_MAX);
		if (status) {
			FUNC1(&pdev->dev, "teardown --> %d\n", status);
			return status;
		}
	}

	FUNC3(&priv->gpio_chip);

	if (FUNC4())
		return 0;

	/* REVISIT no support yet for deregistering all the IRQs */
	FUNC0(1);
	return -EIO;
}