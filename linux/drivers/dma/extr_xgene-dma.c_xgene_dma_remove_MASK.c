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
struct xgene_dma_chan {int /*<<< orphan*/  tasklet; } ;
struct xgene_dma {int /*<<< orphan*/  clk; struct xgene_dma_chan* chan; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int XGENE_DMA_MAX_CHANNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct xgene_dma* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_dma*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgene_dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct xgene_dma*) ; 
 int /*<<< orphan*/  FUNC7 (struct xgene_dma*) ; 
 int /*<<< orphan*/  FUNC8 (struct xgene_dma*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct xgene_dma *pdma = FUNC2(pdev);
	struct xgene_dma_chan *chan;
	int i;

	FUNC4(pdma);

	/* Mask interrupts and disable DMA engine */
	FUNC8(pdma);
	FUNC6(pdma);
	FUNC7(pdma);

	for (i = 0; i < XGENE_DMA_MAX_CHANNEL; i++) {
		chan = &pdma->chan[i];
		FUNC3(&chan->tasklet);
		FUNC5(chan);
	}

	if (!FUNC0(pdma->clk))
		FUNC1(pdma->clk);

	return 0;
}