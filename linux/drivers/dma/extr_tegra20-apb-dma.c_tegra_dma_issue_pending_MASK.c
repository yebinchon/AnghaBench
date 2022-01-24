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
struct tegra_dma_channel {int /*<<< orphan*/  lock; scalar_t__ cyclic; int /*<<< orphan*/  busy; int /*<<< orphan*/  pending_sg_req; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TEGRA_APBDMA_BURST_COMPLETE_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_dma_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_dma_channel*) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_dma_channel*) ; 
 struct tegra_dma_channel* FUNC7 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct dma_chan *dc)
{
	struct tegra_dma_channel *tdc = FUNC7(dc);
	unsigned long flags;

	FUNC2(&tdc->lock, flags);
	if (FUNC1(&tdc->pending_sg_req)) {
		FUNC0(FUNC4(tdc), "No DMA request\n");
		goto end;
	}
	if (!tdc->busy) {
		FUNC6(tdc);

		/* Continuous single mode: Configure next req */
		if (tdc->cyclic) {
			/*
			 * Wait for 1 burst time for configure DMA for
			 * next transfer.
			 */
			FUNC8(TEGRA_APBDMA_BURST_COMPLETE_TIME);
			FUNC5(tdc);
		}
	}
end:
	FUNC3(&tdc->lock, flags);
}