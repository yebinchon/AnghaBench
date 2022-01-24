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
struct xgene_dma {int /*<<< orphan*/  clk; int /*<<< orphan*/ * chan; int /*<<< orphan*/ * dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int XGENE_DMA_MAX_CHANNEL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct xgene_dma* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct xgene_dma*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct xgene_dma*) ; 
 int FUNC13 (struct platform_device*,struct xgene_dma*) ; 
 int FUNC14 (struct xgene_dma*) ; 
 int /*<<< orphan*/  FUNC15 (struct xgene_dma*) ; 
 int /*<<< orphan*/  FUNC16 (struct xgene_dma*) ; 
 int FUNC17 (struct xgene_dma*) ; 
 int FUNC18 (struct xgene_dma*) ; 
 int FUNC19 (struct xgene_dma*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct xgene_dma *pdma;
	int ret, i;

	pdma = FUNC8(&pdev->dev, sizeof(*pdma), GFP_KERNEL);
	if (!pdma)
		return -ENOMEM;

	pdma->dev = &pdev->dev;
	FUNC10(pdev, pdma);

	ret = FUNC13(pdev, pdma);
	if (ret)
		return ret;

	pdma->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC2(pdma->clk) && !FUNC0(&pdev->dev)) {
		FUNC6(&pdev->dev, "Failed to get clk\n");
		return FUNC3(pdma->clk);
	}

	/* Enable clk before accessing registers */
	if (!FUNC2(pdma->clk)) {
		ret = FUNC5(pdma->clk);
		if (ret) {
			FUNC6(&pdev->dev, "Failed to enable clk %d\n", ret);
			return ret;
		}
	}

	/* Remove DMA RAM out of shutdown */
	ret = FUNC17(pdma);
	if (ret)
		goto err_clk_enable;

	ret = FUNC9(&pdev->dev, FUNC1(42));
	if (ret) {
		FUNC6(&pdev->dev, "No usable DMA configuration\n");
		goto err_dma_mask;
	}

	/* Initialize DMA channels software state */
	FUNC15(pdma);

	/* Configue DMA rings */
	ret = FUNC18(pdma);
	if (ret)
		goto err_clk_enable;

	ret = FUNC19(pdma);
	if (ret)
		goto err_request_irq;

	/* Configure and enable DMA engine */
	FUNC16(pdma);

	/* Register DMA device with linux async framework */
	ret = FUNC14(pdma);
	if (ret)
		goto err_async_init;

	return 0;

err_async_init:
	FUNC12(pdma);

err_request_irq:
	for (i = 0; i < XGENE_DMA_MAX_CHANNEL; i++)
		FUNC11(&pdma->chan[i]);

err_dma_mask:
err_clk_enable:
	if (!FUNC2(pdma->clk))
		FUNC4(pdma->clk);

	return ret;
}