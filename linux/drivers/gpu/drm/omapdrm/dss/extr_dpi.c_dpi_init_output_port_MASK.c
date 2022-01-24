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
typedef  int u32 ;
struct omap_dss_device {char* name; int /*<<< orphan*/  owner; int /*<<< orphan*/ * ops; int /*<<< orphan*/  of_ports; int /*<<< orphan*/  dispc_channel; int /*<<< orphan*/  type; int /*<<< orphan*/  id; int /*<<< orphan*/ * dev; } ;
struct dpi_data {int id; TYPE_1__* pdev; struct omap_dss_device output; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OMAP_DISPLAY_TYPE_DPI ; 
 int /*<<< orphan*/  OMAP_DSS_OUTPUT_DPI ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (struct dpi_data*) ; 
 int /*<<< orphan*/  dpi_ops ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*,int*) ; 
 int FUNC3 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_dss_device*) ; 

__attribute__((used)) static int FUNC5(struct dpi_data *dpi, struct device_node *port)
{
	struct omap_dss_device *out = &dpi->output;
	u32 port_num = 0;
	int r;

	FUNC2(port, "reg", &port_num);
	dpi->id = port_num <= 2 ? port_num : 0;

	switch (port_num) {
	case 2:
		out->name = "dpi.2";
		break;
	case 1:
		out->name = "dpi.1";
		break;
	case 0:
	default:
		out->name = "dpi.0";
		break;
	}

	out->dev = &dpi->pdev->dev;
	out->id = OMAP_DSS_OUTPUT_DPI;
	out->type = OMAP_DISPLAY_TYPE_DPI;
	out->dispc_channel = FUNC1(dpi);
	out->of_ports = FUNC0(port_num);
	out->ops = &dpi_ops;
	out->owner = THIS_MODULE;

	r = FUNC3(out);
	if (r < 0)
		return r;

	FUNC4(out);

	return 0;
}