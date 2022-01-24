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
struct device {int /*<<< orphan*/  kobj; } ;
struct platform_device {struct device dev; } ;
struct omap_dss_device {int display; int caps; int /*<<< orphan*/  ops_flags; int /*<<< orphan*/  of_ports; int /*<<< orphan*/  owner; int /*<<< orphan*/  type; int /*<<< orphan*/ * driver; int /*<<< orphan*/ * ops; struct device* dev; } ;
struct TYPE_3__ {int hactive; int vactive; int pixelclock; } ;
struct panel_drv_data {TYPE_2__* extbldev; int /*<<< orphan*/  workqueue; struct backlight_device* bldev; scalar_t__ use_dsi_backlight; int /*<<< orphan*/  ulps_work; int /*<<< orphan*/  te_timeout_work; scalar_t__ ext_te_gpio; int /*<<< orphan*/  do_update; int /*<<< orphan*/  lock; struct omap_dss_device dssdev; TYPE_1__ vm; struct platform_device* pdev; } ;
struct backlight_properties {int max_brightness; int /*<<< orphan*/  type; int /*<<< orphan*/  member_0; } ;
struct backlight_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC3 (struct backlight_device*) ; 
 int /*<<< orphan*/  OMAP_DISPLAY_TYPE_DSI ; 
 int /*<<< orphan*/  OMAP_DSS_DEVICE_OP_MODES ; 
 int OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE ; 
 int OMAP_DSS_DISPLAY_CAP_TEAR_ELIM ; 
 int FUNC4 (struct backlight_device*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 struct backlight_device* FUNC11 (struct device*,int /*<<< orphan*/ ,struct device*,struct panel_drv_data*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 struct panel_drv_data* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct panel_drv_data*) ; 
 int /*<<< orphan*/  dsicm_attr_group ; 
 int /*<<< orphan*/  dsicm_bl_ops ; 
 int /*<<< orphan*/  dsicm_dss_driver ; 
 int /*<<< orphan*/  FUNC14 (struct panel_drv_data*) ; 
 int /*<<< orphan*/  dsicm_ops ; 
 int FUNC15 (struct platform_device*) ; 
 int /*<<< orphan*/  dsicm_te_isr ; 
 int /*<<< orphan*/  dsicm_te_timeout_work_callback ; 
 int /*<<< orphan*/  dsicm_ulps_work ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct panel_drv_data*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct platform_device *pdev)
{
	struct panel_drv_data *ddata;
	struct backlight_device *bldev = NULL;
	struct device *dev = &pdev->dev;
	struct omap_dss_device *dssdev;
	int r;

	FUNC8(dev, "probe\n");

	ddata = FUNC12(dev, sizeof(*ddata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	FUNC20(pdev, ddata);
	ddata->pdev = pdev;

	ddata->vm.hactive = 864;
	ddata->vm.vactive = 480;
	ddata->vm.pixelclock = 864 * 480 * 60;

	r = FUNC15(pdev);
	if (r)
		return r;

	dssdev = &ddata->dssdev;
	dssdev->dev = dev;
	dssdev->ops = &dsicm_ops;
	dssdev->driver = &dsicm_dss_driver;
	dssdev->type = OMAP_DISPLAY_TYPE_DSI;
	dssdev->display = true;
	dssdev->owner = THIS_MODULE;
	dssdev->of_ports = FUNC0(0);
	dssdev->ops_flags = OMAP_DSS_DEVICE_OP_MODES;

	dssdev->caps = OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE |
		OMAP_DSS_DISPLAY_CAP_TEAR_ELIM;

	FUNC19(dssdev);
	FUNC18(dssdev);

	FUNC17(&ddata->lock);

	FUNC5(&ddata->do_update, 0);

	if (ddata->ext_te_gpio) {
		r = FUNC13(dev, FUNC16(ddata->ext_te_gpio),
				dsicm_te_isr,
				IRQF_TRIGGER_RISING,
				"taal vsync", ddata);

		if (r) {
			FUNC9(dev, "IRQ request failed\n");
			goto err_reg;
		}

		FUNC1(&ddata->te_timeout_work,
					dsicm_te_timeout_work_callback);

		FUNC8(dev, "Using GPIO TE\n");
	}

	ddata->workqueue = FUNC6("dsicm_wq");
	if (!ddata->workqueue) {
		r = -ENOMEM;
		goto err_reg;
	}
	FUNC2(&ddata->ulps_work, dsicm_ulps_work);

	FUNC14(ddata);

	if (ddata->use_dsi_backlight) {
		struct backlight_properties props = { 0 };
		props.max_brightness = 255;
		props.type = BACKLIGHT_RAW;

		bldev = FUNC11(dev, FUNC10(dev),
			dev, ddata, &dsicm_bl_ops, &props);
		if (FUNC3(bldev)) {
			r = FUNC4(bldev);
			goto err_bl;
		}

		ddata->bldev = bldev;
	}

	r = FUNC22(&dev->kobj, &dsicm_attr_group);
	if (r) {
		FUNC9(dev, "failed to create sysfs files\n");
		goto err_bl;
	}

	return 0;

err_bl:
	FUNC7(ddata->workqueue);
err_reg:
	if (ddata->extbldev)
		FUNC21(&ddata->extbldev->dev);

	return r;
}