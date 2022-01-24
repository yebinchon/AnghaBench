#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct omap_dss_device {int of_ports; struct gpio_desc* next; int /*<<< orphan*/  owner; int /*<<< orphan*/  type; TYPE_1__* dev; int /*<<< orphan*/ * ops; } ;
struct panel_drv_data {struct omap_dss_device dssdev; struct gpio_desc* enable_gpio; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  OMAP_DISPLAY_TYPE_VENC ; 
 int FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 struct gpio_desc* FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 struct panel_drv_data* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_dss_device*) ; 
 struct gpio_desc* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  opa362_ops ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct panel_drv_data*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct panel_drv_data *ddata;
	struct omap_dss_device *dssdev;
	struct gpio_desc *gpio;

	FUNC3(&pdev->dev, "probe\n");

	ddata = FUNC6(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	FUNC9(pdev, ddata);

	gpio = FUNC5(&pdev->dev, "enable", GPIOD_OUT_LOW);
	if (FUNC1(gpio))
		return FUNC2(gpio);

	ddata->enable_gpio = gpio;

	dssdev = &ddata->dssdev;
	dssdev->ops = &opa362_ops;
	dssdev->dev = &pdev->dev;
	dssdev->type = OMAP_DISPLAY_TYPE_VENC;
	dssdev->owner = THIS_MODULE;
	dssdev->of_ports = FUNC0(1) | FUNC0(0);

	dssdev->next = FUNC8(pdev->dev.of_node, 1);
	if (FUNC1(dssdev->next)) {
		if (FUNC2(dssdev->next) != -EPROBE_DEFER)
			FUNC4(&pdev->dev, "failed to find video sink\n");
		return FUNC2(dssdev->next);
	}

	FUNC7(dssdev);

	return 0;
}