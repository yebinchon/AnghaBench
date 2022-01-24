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
struct omap_dss_device {char* name; int bus_flags; int /*<<< orphan*/  of_ports; int /*<<< orphan*/  owner; int /*<<< orphan*/ * ops; int /*<<< orphan*/  dispc_channel; int /*<<< orphan*/  type; int /*<<< orphan*/  id; int /*<<< orphan*/  dev; } ;
struct dsi_data {scalar_t__ module_id; int /*<<< orphan*/  dev; struct omap_dss_device output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DRM_BUS_FLAG_DE_HIGH ; 
 int DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE ; 
 int DRM_BUS_FLAG_SYNC_DRIVE_NEGEDGE ; 
 int /*<<< orphan*/  OMAP_DISPLAY_TYPE_DSI ; 
 int /*<<< orphan*/  OMAP_DSS_OUTPUT_DSI1 ; 
 int /*<<< orphan*/  OMAP_DSS_OUTPUT_DSI2 ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (struct dsi_data*) ; 
 int /*<<< orphan*/  dsi_ops ; 
 int FUNC2 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC4(struct dsi_data *dsi)
{
	struct omap_dss_device *out = &dsi->output;
	int r;

	out->dev = dsi->dev;
	out->id = dsi->module_id == 0 ?
			OMAP_DSS_OUTPUT_DSI1 : OMAP_DSS_OUTPUT_DSI2;

	out->type = OMAP_DISPLAY_TYPE_DSI;
	out->name = dsi->module_id == 0 ? "dsi.0" : "dsi.1";
	out->dispc_channel = FUNC1(dsi);
	out->ops = &dsi_ops;
	out->owner = THIS_MODULE;
	out->of_ports = FUNC0(0);
	out->bus_flags = DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE
		       | DRM_BUS_FLAG_DE_HIGH
		       | DRM_BUS_FLAG_SYNC_DRIVE_NEGEDGE;

	r = FUNC2(out);
	if (r < 0)
		return r;

	FUNC3(out);

	return 0;
}