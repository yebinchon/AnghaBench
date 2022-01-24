#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct omap_dss_device {int of_ports; int ops_flags; struct gpio_desc* next; int /*<<< orphan*/  owner; int /*<<< orphan*/  type; TYPE_1__* dev; int /*<<< orphan*/ * ops; } ;
struct panel_drv_data {struct omap_dss_device dssdev; struct gpio_desc* hpd_gpio; int /*<<< orphan*/  hpd_lock; struct gpio_desc* ls_oe_gpio; struct gpio_desc* ct_cp_hpd_gpio; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  OMAP_DISPLAY_TYPE_HDMI ; 
 int OMAP_DSS_DEVICE_OP_DETECT ; 
 int OMAP_DSS_DEVICE_OP_HPD ; 
 int FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 struct gpio_desc* FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct panel_drv_data* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct omap_dss_device*) ; 
 struct gpio_desc* FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct panel_drv_data*) ; 
 int /*<<< orphan*/  tpd_hpd_isr ; 
 int /*<<< orphan*/  tpd_ops ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct omap_dss_device *dssdev;
	struct panel_drv_data *ddata;
	int r;
	struct gpio_desc *gpio;

	ddata = FUNC6(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	FUNC12(pdev, ddata);

	gpio = FUNC5(&pdev->dev, NULL, 0,
		 GPIOD_OUT_LOW);
	if (FUNC1(gpio))
		return FUNC2(gpio);

	ddata->ct_cp_hpd_gpio = gpio;

	gpio = FUNC5(&pdev->dev, NULL, 1,
		 GPIOD_OUT_LOW);
	if (FUNC1(gpio))
		return FUNC2(gpio);

	ddata->ls_oe_gpio = gpio;

	gpio = FUNC4(&pdev->dev, NULL, 2,
		GPIOD_IN);
	if (FUNC1(gpio))
		return FUNC2(gpio);

	ddata->hpd_gpio = gpio;

	FUNC9(&ddata->hpd_lock);

	r = FUNC7(&pdev->dev, FUNC8(ddata->hpd_gpio),
		NULL, tpd_hpd_isr,
		IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
		"tpd12s015 hpd", ddata);
	if (r)
		return r;

	dssdev = &ddata->dssdev;
	dssdev->ops = &tpd_ops;
	dssdev->dev = &pdev->dev;
	dssdev->type = OMAP_DISPLAY_TYPE_HDMI;
	dssdev->owner = THIS_MODULE;
	dssdev->of_ports = FUNC0(1) | FUNC0(0);
	dssdev->ops_flags = OMAP_DSS_DEVICE_OP_DETECT
			  | OMAP_DSS_DEVICE_OP_HPD;

	dssdev->next = FUNC11(pdev->dev.of_node, 1);
	if (FUNC1(dssdev->next)) {
		if (FUNC2(dssdev->next) != -EPROBE_DEFER)
			FUNC3(&pdev->dev, "failed to find video sink\n");
		return FUNC2(dssdev->next);
	}

	FUNC10(dssdev);

	return 0;
}