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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct omap_dss_device {int display; int ops_flags; int /*<<< orphan*/  of_ports; int /*<<< orphan*/  owner; int /*<<< orphan*/  type; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * ops; } ;
struct panel_drv_data {struct gpio_desc* hpd_gpio; struct omap_dss_device dssdev; int /*<<< orphan*/  hpd_lock; int /*<<< orphan*/ * dev; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  OMAP_DISPLAY_TYPE_HDMI ; 
 int OMAP_DSS_DEVICE_OP_DETECT ; 
 int OMAP_DSS_DEVICE_OP_HPD ; 
 int FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct gpio_desc* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct panel_drv_data* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct gpio_desc*) ; 
 int /*<<< orphan*/  hdmic_hpd_isr ; 
 int /*<<< orphan*/  hdmic_ops ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct panel_drv_data*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct panel_drv_data *ddata;
	struct omap_dss_device *dssdev;
	struct gpio_desc *gpio;
	int r;

	ddata = FUNC5(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	FUNC11(pdev, ddata);
	ddata->dev = &pdev->dev;

	FUNC8(&ddata->hpd_lock);

	/* HPD GPIO */
	gpio = FUNC4(&pdev->dev, "hpd", GPIOD_IN);
	if (FUNC1(gpio)) {
		FUNC3(&pdev->dev, "failed to parse HPD gpio\n");
		return FUNC2(gpio);
	}

	ddata->hpd_gpio = gpio;

	if (ddata->hpd_gpio) {
		r = FUNC6(&pdev->dev,
				FUNC7(ddata->hpd_gpio),
				NULL, hdmic_hpd_isr,
				IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING |
				IRQF_ONESHOT,
				"hdmic hpd", ddata);
		if (r)
			return r;
	}

	dssdev = &ddata->dssdev;
	dssdev->ops = &hdmic_ops;
	dssdev->dev = &pdev->dev;
	dssdev->type = OMAP_DISPLAY_TYPE_HDMI;
	dssdev->display = true;
	dssdev->owner = THIS_MODULE;
	dssdev->of_ports = FUNC0(0);
	dssdev->ops_flags = ddata->hpd_gpio
			  ? OMAP_DSS_DEVICE_OP_DETECT | OMAP_DSS_DEVICE_OP_HPD
			  : 0;

	FUNC10(dssdev);
	FUNC9(dssdev);

	return 0;
}