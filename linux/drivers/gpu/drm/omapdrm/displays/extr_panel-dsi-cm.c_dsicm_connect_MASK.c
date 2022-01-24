#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct panel_drv_data {struct omap_dss_device* src; int /*<<< orphan*/  channel; TYPE_1__* pdev; } ;
struct omap_dss_device {TYPE_3__* ops; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int (* request_vc ) (struct omap_dss_device*,int /*<<< orphan*/ *) ;int (* set_vc_id ) (struct omap_dss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* release_vc ) (struct omap_dss_device*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_2__ dsi; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCH ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct omap_dss_device*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct omap_dss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dss_device*,int /*<<< orphan*/ ) ; 
 struct panel_drv_data* FUNC4 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC5(struct omap_dss_device *src,
			 struct omap_dss_device *dst)
{
	struct panel_drv_data *ddata = FUNC4(dst);
	struct device *dev = &ddata->pdev->dev;
	int r;

	r = src->ops->dsi.request_vc(src, &ddata->channel);
	if (r) {
		FUNC0(dev, "failed to get virtual channel\n");
		return r;
	}

	r = src->ops->dsi.set_vc_id(src, ddata->channel, TCH);
	if (r) {
		FUNC0(dev, "failed to set VC_ID\n");
		src->ops->dsi.release_vc(src, ddata->channel);
		return r;
	}

	ddata->src = src;
	return 0;
}