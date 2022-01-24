#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  route_free; TYPE_2__* dev; } ;
struct lpc18xx_dmamux_data {TYPE_1__ dmarouter; int /*<<< orphan*/  lock; int /*<<< orphan*/  muxes; int /*<<< orphan*/  dma_master_requests; int /*<<< orphan*/  dma_mux_requests; int /*<<< orphan*/  reg; } ;
struct lpc18xx_dmamux {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct lpc18xx_dmamux_data* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpc18xx_dmamux_free ; 
 int /*<<< orphan*/  lpc18xx_dmamux_reserve ; 
 int FUNC5 (struct device_node*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 struct device_node* FUNC7 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct lpc18xx_dmamux_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device_node *dma_np, *np = pdev->dev.of_node;
	struct lpc18xx_dmamux_data *dmamux;
	int ret;

	dmamux = FUNC4(&pdev->dev, sizeof(*dmamux), GFP_KERNEL);
	if (!dmamux)
		return -ENOMEM;

	dmamux->reg = FUNC11("nxp,lpc1850-creg");
	if (FUNC0(dmamux->reg)) {
		FUNC2(&pdev->dev, "syscon lookup failed\n");
		return FUNC1(dmamux->reg);
	}

	ret = FUNC8(np, "dma-requests",
				   &dmamux->dma_mux_requests);
	if (ret) {
		FUNC2(&pdev->dev, "missing dma-requests property\n");
		return ret;
	}

	dma_np = FUNC7(np, "dma-masters", 0);
	if (!dma_np) {
		FUNC2(&pdev->dev, "can't get dma master\n");
		return -ENODEV;
	}

	ret = FUNC8(dma_np, "dma-requests",
				   &dmamux->dma_master_requests);
	FUNC6(dma_np);
	if (ret) {
		FUNC2(&pdev->dev, "missing master dma-requests property\n");
		return ret;
	}

	dmamux->muxes = FUNC3(&pdev->dev, dmamux->dma_master_requests,
				     sizeof(struct lpc18xx_dmamux),
				     GFP_KERNEL);
	if (!dmamux->muxes)
		return -ENOMEM;

	FUNC10(&dmamux->lock);
	FUNC9(pdev, dmamux);
	dmamux->dmarouter.dev = &pdev->dev;
	dmamux->dmarouter.route_free = lpc18xx_dmamux_free;

	return FUNC5(np, lpc18xx_dmamux_reserve,
				      &dmamux->dmarouter);
}