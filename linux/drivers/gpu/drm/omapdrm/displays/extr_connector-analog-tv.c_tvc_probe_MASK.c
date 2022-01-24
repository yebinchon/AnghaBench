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
struct omap_dss_device {int display; int /*<<< orphan*/  of_ports; int /*<<< orphan*/  owner; int /*<<< orphan*/  type; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * ops; } ;
struct panel_drv_data {struct omap_dss_device dssdev; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OMAP_DISPLAY_TYPE_VENC ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct panel_drv_data* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct panel_drv_data*) ; 
 int /*<<< orphan*/  tvc_ops ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct panel_drv_data *ddata;
	struct omap_dss_device *dssdev;

	ddata = FUNC1(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
	if (!ddata)
		return -ENOMEM;

	FUNC4(pdev, ddata);
	ddata->dev = &pdev->dev;

	dssdev = &ddata->dssdev;
	dssdev->ops = &tvc_ops;
	dssdev->dev = &pdev->dev;
	dssdev->type = OMAP_DISPLAY_TYPE_VENC;
	dssdev->display = true;
	dssdev->owner = THIS_MODULE;
	dssdev->of_ports = FUNC0(0);

	FUNC3(dssdev);
	FUNC2(dssdev);

	return 0;
}