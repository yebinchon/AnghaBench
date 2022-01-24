#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  device_node; } ;
struct TYPE_6__ {int /*<<< orphan*/  task; TYPE_1__ chan; } ;
struct mtk_cqdma_vchan {TYPE_2__ vc; } ;
struct mtk_cqdma_device {int dma_requests; int dma_channels; int /*<<< orphan*/  ddev; TYPE_4__** pc; struct mtk_cqdma_vchan* vc; } ;
struct TYPE_8__ {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_CQDMA_INT_EN ; 
 int /*<<< orphan*/  MTK_CQDMA_INT_EN_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_cqdma_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mtk_cqdma_device* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct mtk_cqdma_device *cqdma = FUNC5(pdev);
	struct mtk_cqdma_vchan *vc;
	unsigned long flags;
	int i;

	/* kill VC task */
	for (i = 0; i < cqdma->dma_requests; i++) {
		vc = &cqdma->vc[i];

		FUNC1(&vc->vc.chan.device_node);
		FUNC9(&vc->vc.task);
	}

	/* disable interrupt */
	for (i = 0; i < cqdma->dma_channels; i++) {
		FUNC6(&cqdma->pc[i]->lock, flags);
		FUNC3(cqdma->pc[i], MTK_CQDMA_INT_EN,
			    MTK_CQDMA_INT_EN_BIT);
		FUNC7(&cqdma->pc[i]->lock, flags);

		/* Waits for any pending IRQ handlers to complete */
		FUNC8(cqdma->pc[i]->irq);

		FUNC9(&cqdma->pc[i]->tasklet);
	}

	/* disable hardware */
	FUNC2(cqdma);

	FUNC0(&cqdma->ddev);
	FUNC4(pdev->dev.of_node);

	return 0;
}