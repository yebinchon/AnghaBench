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
struct TYPE_2__ {int /*<<< orphan*/  device_node; } ;
struct xilinx_dma_chan {scalar_t__ irq; TYPE_1__ common; int /*<<< orphan*/  tasklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  XILINX_DMA_DMAXR_ALL_IRQ_MASK ; 
 int /*<<< orphan*/  XILINX_DMA_REG_DMACR ; 
 int /*<<< orphan*/  FUNC0 (struct xilinx_dma_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct xilinx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct xilinx_dma_chan *chan)
{
	/* Disable all interrupts */
	FUNC0(chan, XILINX_DMA_REG_DMACR,
		      XILINX_DMA_DMAXR_ALL_IRQ_MASK);

	if (chan->irq > 0)
		FUNC1(chan->irq, chan);

	FUNC3(&chan->tasklet);

	FUNC2(&chan->common.device_node);
}