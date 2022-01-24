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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mipi_dsi_host {int /*<<< orphan*/ * ops; struct device* dev; } ;
struct mcde_dsi {struct mipi_dsi_host dsi_host; scalar_t__ regs; scalar_t__ prcmu; struct device* dev; } ;

/* Variables and functions */
 scalar_t__ DSI_ID_REG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 scalar_t__ FUNC5 (struct device*,struct resource*) ; 
 struct mcde_dsi* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcde_dsi_component_ops ; 
 int /*<<< orphan*/  mcde_dsi_host_ops ; 
 int FUNC7 (struct mipi_dsi_host*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct mcde_dsi*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mcde_dsi *d;
	struct mipi_dsi_host *host;
	struct resource *res;
	u32 dsi_id;
	int ret;

	d = FUNC6(dev, sizeof(*d), GFP_KERNEL);
	if (!d)
		return -ENOMEM;
	d->dev = dev;
	FUNC9(pdev, d);

	/* Get a handle on the PRCMU so we can do reset */
	d->prcmu =
		FUNC11("stericsson,db8500-prcmu");
	if (FUNC0(d->prcmu)) {
		FUNC3(dev, "no PRCMU regmap\n");
		return FUNC1(d->prcmu);
	}

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	d->regs = FUNC5(dev, res);
	if (FUNC0(d->regs)) {
		FUNC3(dev, "no DSI regs\n");
		return FUNC1(d->regs);
	}

	dsi_id = FUNC10(d->regs + DSI_ID_REG);
	FUNC4(dev, "HW revision 0x%08x\n", dsi_id);

	host = &d->dsi_host;
	host->dev = dev;
	host->ops = &mcde_dsi_host_ops;
	ret = FUNC7(host);
	if (ret < 0) {
		FUNC3(dev, "failed to register DSI host: %d\n", ret);
		return ret;
	}
	FUNC4(dev, "registered DSI host\n");

	FUNC9(pdev, d);
	return FUNC2(dev, &mcde_dsi_component_ops);
}