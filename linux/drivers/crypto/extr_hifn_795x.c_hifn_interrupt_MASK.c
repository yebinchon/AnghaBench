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
struct hifn_dma {scalar_t__ cmdu; int /*<<< orphan*/  resu; int /*<<< orphan*/  dstu; int /*<<< orphan*/  srcu; int /*<<< orphan*/  resi; int /*<<< orphan*/  dsti; int /*<<< orphan*/  srci; int /*<<< orphan*/  cmdi; } ;
struct hifn_device {int dmareg; int /*<<< orphan*/  tasklet; TYPE_1__* pdev; scalar_t__ desc_virt; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIFN_0_PUISR ; 
 int /*<<< orphan*/  HIFN_1_DMA_CSR ; 
 int /*<<< orphan*/  HIFN_1_DMA_IER ; 
 int /*<<< orphan*/  HIFN_1_PUB_STATUS ; 
 int HIFN_DMACSR_C_ABORT ; 
 int HIFN_DMACSR_C_WAIT ; 
 int HIFN_DMACSR_D_ABORT ; 
 int HIFN_DMACSR_D_OVER ; 
 int HIFN_DMACSR_ENGINE ; 
 int HIFN_DMACSR_PUBDONE ; 
 int HIFN_DMACSR_R_ABORT ; 
 int HIFN_DMACSR_R_OVER ; 
 int HIFN_DMACSR_S_ABORT ; 
 int HIFN_DMAIER_C_WAIT ; 
 int HIFN_PUBSTS_DONE ; 
 int HIFN_PUISR_DSTOVER ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hifn_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hifn_device*) ; 
 int FUNC4 (struct hifn_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hifn_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hifn_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hifn_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hifn_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *data)
{
	struct hifn_device *dev = (struct hifn_device *)data;
	struct hifn_dma *dma = (struct hifn_dma *)dev->desc_virt;
	u32 dmacsr, restart;

	dmacsr = FUNC5(dev, HIFN_1_DMA_CSR);

	FUNC0(&dev->pdev->dev, "1 dmacsr: %08x, dmareg: %08x, res: %08x [%d], "
			"i: %d.%d.%d.%d, u: %d.%d.%d.%d.\n",
		dmacsr, dev->dmareg, dmacsr & dev->dmareg, dma->cmdi,
		dma->cmdi, dma->srci, dma->dsti, dma->resi,
		dma->cmdu, dma->srcu, dma->dstu, dma->resu);

	if ((dmacsr & dev->dmareg) == 0)
		return IRQ_NONE;

	FUNC8(dev, HIFN_1_DMA_CSR, dmacsr & dev->dmareg);

	if (dmacsr & HIFN_DMACSR_ENGINE)
		FUNC7(dev, HIFN_0_PUISR, FUNC4(dev, HIFN_0_PUISR));
	if (dmacsr & HIFN_DMACSR_PUBDONE)
		FUNC8(dev, HIFN_1_PUB_STATUS,
			FUNC5(dev, HIFN_1_PUB_STATUS) | HIFN_PUBSTS_DONE);

	restart = dmacsr & (HIFN_DMACSR_R_OVER | HIFN_DMACSR_D_OVER);
	if (restart) {
		u32 puisr = FUNC4(dev, HIFN_0_PUISR);

		FUNC1(&dev->pdev->dev, "overflow: r: %d, d: %d, puisr: %08x, d: %u.\n",
			 !!(dmacsr & HIFN_DMACSR_R_OVER),
			 !!(dmacsr & HIFN_DMACSR_D_OVER),
			puisr, !!(puisr & HIFN_PUISR_DSTOVER));
		if (!!(puisr & HIFN_PUISR_DSTOVER))
			FUNC7(dev, HIFN_0_PUISR, HIFN_PUISR_DSTOVER);
		FUNC8(dev, HIFN_1_DMA_CSR, dmacsr & (HIFN_DMACSR_R_OVER |
					HIFN_DMACSR_D_OVER));
	}

	restart = dmacsr & (HIFN_DMACSR_C_ABORT | HIFN_DMACSR_S_ABORT |
			HIFN_DMACSR_D_ABORT | HIFN_DMACSR_R_ABORT);
	if (restart) {
		FUNC1(&dev->pdev->dev, "abort: c: %d, s: %d, d: %d, r: %d.\n",
			 !!(dmacsr & HIFN_DMACSR_C_ABORT),
			 !!(dmacsr & HIFN_DMACSR_S_ABORT),
			 !!(dmacsr & HIFN_DMACSR_D_ABORT),
			 !!(dmacsr & HIFN_DMACSR_R_ABORT));
		FUNC6(dev, 1);
		FUNC2(dev);
		FUNC3(dev);
	}

	if ((dmacsr & HIFN_DMACSR_C_WAIT) && (dma->cmdu == 0)) {
		FUNC0(&dev->pdev->dev, "wait on command.\n");
		dev->dmareg &= ~(HIFN_DMAIER_C_WAIT);
		FUNC8(dev, HIFN_1_DMA_IER, dev->dmareg);
	}

	FUNC9(&dev->tasklet);

	return IRQ_HANDLED;
}