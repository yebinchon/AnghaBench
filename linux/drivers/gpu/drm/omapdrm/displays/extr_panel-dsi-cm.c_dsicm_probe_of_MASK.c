#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_7__ {int pixelclock; int hactive; int vactive; } ;
struct panel_drv_data {int use_dsi_backlight; int /*<<< orphan*/  extbldev; int /*<<< orphan*/ * vddi; int /*<<< orphan*/ * vpnl; scalar_t__ height_mm; scalar_t__ width_mm; TYPE_1__ vm; int /*<<< orphan*/ * ext_te_gpio; int /*<<< orphan*/ * reset_gpio; } ;
struct display_timing {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int FUNC8 (struct device_node*,char*,struct display_timing*) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 struct device_node* FUNC10 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*,char*,scalar_t__*) ; 
 struct panel_drv_data* FUNC12 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct display_timing*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct device_node *backlight;
	struct panel_drv_data *ddata = FUNC12(pdev);
	struct display_timing timing;
	int err;

	ddata->reset_gpio = FUNC4(&pdev->dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(ddata->reset_gpio)) {
		err = FUNC1(ddata->reset_gpio);
		FUNC2(&pdev->dev, "reset gpio request failed: %d", err);
		return err;
	}

	ddata->ext_te_gpio = FUNC5(&pdev->dev, "te",
						     GPIOD_IN);
	if (FUNC0(ddata->ext_te_gpio)) {
		err = FUNC1(ddata->ext_te_gpio);
		FUNC2(&pdev->dev, "TE gpio request failed: %d", err);
		return err;
	}

	err = FUNC8(node, "panel-timing", &timing);
	if (!err) {
		FUNC13(&timing, &ddata->vm);
		if (!ddata->vm.pixelclock)
			ddata->vm.pixelclock =
				ddata->vm.hactive * ddata->vm.vactive * 60;
	} else {
		FUNC3(&pdev->dev,
			 "failed to get video timing, using defaults\n");
	}

	ddata->width_mm = 0;
	FUNC11(node, "width-mm", &ddata->width_mm);

	ddata->height_mm = 0;
	FUNC11(node, "height-mm", &ddata->height_mm);

	ddata->vpnl = FUNC6(&pdev->dev, "vpnl");
	if (FUNC0(ddata->vpnl)) {
		err = FUNC1(ddata->vpnl);
		if (err == -EPROBE_DEFER)
			return err;
		ddata->vpnl = NULL;
	}

	ddata->vddi = FUNC6(&pdev->dev, "vddi");
	if (FUNC0(ddata->vddi)) {
		err = FUNC1(ddata->vddi);
		if (err == -EPROBE_DEFER)
			return err;
		ddata->vddi = NULL;
	}

	backlight = FUNC10(node, "backlight", 0);
	if (backlight) {
		ddata->extbldev = FUNC7(backlight);
		FUNC9(backlight);

		if (!ddata->extbldev)
			return -EPROBE_DEFER;
	} else {
		/* assume native backlight support */
		ddata->use_dsi_backlight = true;
	}

	/* TODO: ulps */

	return 0;
}