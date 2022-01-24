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
struct sdma_engine {struct sdma_channel* channel; int /*<<< orphan*/  clk_ipg; int /*<<< orphan*/  clk_ahb; int /*<<< orphan*/  script_addrs; int /*<<< orphan*/  dma_device; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  chan; int /*<<< orphan*/  task; } ;
struct sdma_channel {TYPE_1__ vc; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MAX_DMA_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sdma_engine*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sdma_engine* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct sdma_engine *sdma = FUNC4(pdev);
	int i;

	FUNC1(&pdev->dev, sdma->irq, sdma);
	FUNC2(&sdma->dma_device);
	FUNC3(sdma->script_addrs);
	FUNC0(sdma->clk_ahb);
	FUNC0(sdma->clk_ipg);
	/* Kill the tasklet */
	for (i = 0; i < MAX_DMA_CHANNELS; i++) {
		struct sdma_channel *sdmac = &sdma->channel[i];

		FUNC7(&sdmac->vc.task);
		FUNC6(&sdmac->vc.chan);
	}

	FUNC5(pdev, NULL);
	return 0;
}