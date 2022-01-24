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
struct zynqmp_dma_chan {int /*<<< orphan*/  lock; scalar_t__ regs; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 scalar_t__ ZYNQMP_DMA_IDS ; 
 int /*<<< orphan*/  ZYNQMP_DMA_IDS_DEFAULT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct zynqmp_dma_chan* FUNC2 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct zynqmp_dma_chan*) ; 

__attribute__((used)) static int FUNC5(struct dma_chan *dchan)
{
	struct zynqmp_dma_chan *chan = FUNC2(dchan);
	unsigned long irqflags;

	FUNC0(&chan->lock, irqflags);
	FUNC3(ZYNQMP_DMA_IDS_DEFAULT_MASK, chan->regs + ZYNQMP_DMA_IDS);
	FUNC4(chan);
	FUNC1(&chan->lock, irqflags);

	return 0;
}