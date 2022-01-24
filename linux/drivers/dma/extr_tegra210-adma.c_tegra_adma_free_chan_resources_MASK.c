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
struct TYPE_2__ {int /*<<< orphan*/  task; } ;
struct tegra_adma_chan {int /*<<< orphan*/  sreq_dir; scalar_t__ sreq_index; int /*<<< orphan*/  irq; TYPE_1__ vc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TRANS_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct tegra_adma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_adma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_chan*) ; 
 struct tegra_adma_chan* FUNC5 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct dma_chan *dc)
{
	struct tegra_adma_chan *tdc = FUNC5(dc);

	FUNC4(dc);
	FUNC6(&tdc->vc);
	FUNC2(&tdc->vc.task);
	FUNC0(tdc->irq, tdc);
	FUNC1(FUNC3(tdc));

	tdc->sreq_index = 0;
	tdc->sreq_dir = DMA_TRANS_NONE;
}