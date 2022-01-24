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
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  device_node; } ;
struct TYPE_5__ {int /*<<< orphan*/  task; TYPE_1__ chan; } ;
struct mtk_hsdma_vchan {TYPE_2__ vc; } ;
struct mtk_hsdma_device {int dma_requests; int /*<<< orphan*/  ddev; int /*<<< orphan*/  irq; struct mtk_hsdma_vchan* vc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_HSDMA_INT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_hsdma_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_hsdma_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mtk_hsdma_device* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct mtk_hsdma_device *hsdma = FUNC5(pdev);
	struct mtk_hsdma_vchan *vc;
	int i;

	/* Kill VC task */
	for (i = 0; i < hsdma->dma_requests; i++) {
		vc = &hsdma->vc[i];

		FUNC1(&vc->vc.chan.device_node);
		FUNC7(&vc->vc.task);
	}

	/* Disable DMA interrupt */
	FUNC2(hsdma, MTK_HSDMA_INT_ENABLE, 0);

	/* Waits for any pending IRQ handlers to complete */
	FUNC6(hsdma->irq);

	/* Disable hardware */
	FUNC3(hsdma);

	FUNC0(&hsdma->ddev);
	FUNC4(pdev->dev.of_node);

	return 0;
}