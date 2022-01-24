#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wm8350_platform_data {int gpio_base; } ;
struct TYPE_6__ {int ngpio; int base; TYPE_2__* parent; } ;
struct wm8350_gpio_data {TYPE_1__ gpio_chip; struct wm8350* wm8350; } ;
struct wm8350 {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int) ; 
 struct wm8350* FUNC1 (int /*<<< orphan*/ ) ; 
 struct wm8350_platform_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,struct wm8350_gpio_data*) ; 
 struct wm8350_gpio_data* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct wm8350_gpio_data*) ; 
 TYPE_1__ template_chip ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct wm8350 *wm8350 = FUNC1(pdev->dev.parent);
	struct wm8350_platform_data *pdata = FUNC2(wm8350->dev);
	struct wm8350_gpio_data *wm8350_gpio;
	int ret;

	wm8350_gpio = FUNC4(&pdev->dev, sizeof(*wm8350_gpio),
				   GFP_KERNEL);
	if (wm8350_gpio == NULL)
		return -ENOMEM;

	wm8350_gpio->wm8350 = wm8350;
	wm8350_gpio->gpio_chip = template_chip;
	wm8350_gpio->gpio_chip.ngpio = 13;
	wm8350_gpio->gpio_chip.parent = &pdev->dev;
	if (pdata && pdata->gpio_base)
		wm8350_gpio->gpio_chip.base = pdata->gpio_base;
	else
		wm8350_gpio->gpio_chip.base = -1;

	ret = FUNC3(&pdev->dev, &wm8350_gpio->gpio_chip,
				     wm8350_gpio);
	if (ret < 0) {
		FUNC0(&pdev->dev, "Could not register gpiochip, %d\n", ret);
		return ret;
	}

	FUNC5(pdev, wm8350_gpio);

	return ret;
}