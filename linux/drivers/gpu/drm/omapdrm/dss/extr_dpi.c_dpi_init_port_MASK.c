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
typedef  int /*<<< orphan*/  u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct dss_device {int dummy; } ;
struct dpi_data {int dss_model; int /*<<< orphan*/  lock; struct dss_device* dss; struct platform_device* pdev; int /*<<< orphan*/  data_lines; } ;
struct device_node {struct dpi_data* data; } ;
typedef  enum dss_model { ____Placeholder_dss_model } dss_model ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dpi_data* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dpi_data*,struct device_node*) ; 
 int FUNC3 (struct dpi_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct device_node* FUNC5 (struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 int FUNC7 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

int FUNC8(struct dss_device *dss, struct platform_device *pdev,
		  struct device_node *port, enum dss_model dss_model)
{
	struct dpi_data *dpi;
	struct device_node *ep;
	u32 datalines;
	int r;

	dpi = FUNC1(&pdev->dev, sizeof(*dpi), GFP_KERNEL);
	if (!dpi)
		return -ENOMEM;

	ep = FUNC5(port, NULL);
	if (!ep)
		return 0;

	r = FUNC7(ep, "data-lines", &datalines);
	FUNC6(ep);
	if (r) {
		FUNC0("failed to parse datalines\n");
		return r;
	}

	dpi->data_lines = datalines;

	dpi->pdev = pdev;
	dpi->dss_model = dss_model;
	dpi->dss = dss;
	port->data = dpi;

	FUNC4(&dpi->lock);

	r = FUNC3(dpi);
	if (r)
		return r;

	return FUNC2(dpi, port);
}