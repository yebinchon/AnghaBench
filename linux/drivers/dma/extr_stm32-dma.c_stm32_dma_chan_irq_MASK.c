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
struct stm32_dma_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct stm32_dma_chan {TYPE_1__ vchan; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int STM32_DMA_FEI ; 
 int STM32_DMA_HTI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int STM32_DMA_SCR_EN ; 
 int STM32_DMA_SCR_TCIE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int STM32_DMA_SFCR_FEIE ; 
 int STM32_DMA_TCI ; 
 int /*<<< orphan*/  FUNC2 (struct stm32_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct stm32_dma_device* FUNC7 (struct stm32_dma_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct stm32_dma_chan*) ; 
 int /*<<< orphan*/  FUNC9 (struct stm32_dma_chan*,int) ; 
 int FUNC10 (struct stm32_dma_chan*) ; 
 int FUNC11 (struct stm32_dma_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *devid)
{
	struct stm32_dma_chan *chan = devid;
	struct stm32_dma_device *dmadev = FUNC7(chan);
	u32 status, scr, sfcr;

	FUNC5(&chan->vchan.lock);

	status = FUNC10(chan);
	scr = FUNC11(dmadev, FUNC0(chan->id));
	sfcr = FUNC11(dmadev, FUNC1(chan->id));

	if (status & STM32_DMA_TCI) {
		FUNC9(chan, STM32_DMA_TCI);
		if (scr & STM32_DMA_SCR_TCIE)
			FUNC8(chan);
		status &= ~STM32_DMA_TCI;
	}
	if (status & STM32_DMA_HTI) {
		FUNC9(chan, STM32_DMA_HTI);
		status &= ~STM32_DMA_HTI;
	}
	if (status & STM32_DMA_FEI) {
		FUNC9(chan, STM32_DMA_FEI);
		status &= ~STM32_DMA_FEI;
		if (sfcr & STM32_DMA_SFCR_FEIE) {
			if (!(scr & STM32_DMA_SCR_EN))
				FUNC4(FUNC2(chan), "FIFO Error\n");
			else
				FUNC3(FUNC2(chan), "FIFO over/underrun\n");
		}
	}
	if (status) {
		FUNC9(chan, status);
		FUNC4(FUNC2(chan), "DMA error: status=0x%08x\n", status);
		if (!(scr & STM32_DMA_SCR_EN))
			FUNC4(FUNC2(chan), "chan disabled by HW\n");
	}

	FUNC6(&chan->vchan.lock);

	return IRQ_HANDLED;
}