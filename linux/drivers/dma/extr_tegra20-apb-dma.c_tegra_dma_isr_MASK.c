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
struct tegra_dma_channel {int /*<<< orphan*/  lock; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  (* isr_handler ) (struct tegra_dma_channel*,int) ;int /*<<< orphan*/  dma_chan; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  TEGRA_APBDMA_CHAN_STATUS ; 
 unsigned long TEGRA_APBDMA_STATUS_ISE_EOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_dma_channel*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_dma_channel*) ; 
 unsigned long FUNC6 (struct tegra_dma_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_dma_channel*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct tegra_dma_channel *tdc = dev_id;
	unsigned long status;
	unsigned long flags;

	FUNC1(&tdc->lock, flags);

	FUNC8(&tdc->dma_chan, irq);
	status = FUNC6(tdc, TEGRA_APBDMA_CHAN_STATUS);
	if (status & TEGRA_APBDMA_STATUS_ISE_EOC) {
		FUNC7(tdc, TEGRA_APBDMA_CHAN_STATUS, status);
		tdc->isr_handler(tdc, false);
		FUNC4(&tdc->tasklet);
		FUNC2(&tdc->lock, flags);
		return IRQ_HANDLED;
	}

	FUNC2(&tdc->lock, flags);
	FUNC0(FUNC5(tdc),
		"Interrupt already served status 0x%08lx\n", status);
	return IRQ_NONE;
}