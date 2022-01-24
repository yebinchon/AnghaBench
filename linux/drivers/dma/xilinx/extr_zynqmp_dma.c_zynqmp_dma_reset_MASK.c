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
struct zynqmp_dma_chan {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ ZYNQMP_DMA_IDS ; 
 int /*<<< orphan*/  ZYNQMP_DMA_IDS_DEFAULT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct zynqmp_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct zynqmp_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct zynqmp_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct zynqmp_dma_chan*) ; 

__attribute__((used)) static void FUNC5(struct zynqmp_dma_chan *chan)
{
	FUNC0(ZYNQMP_DMA_IDS_DEFAULT_MASK, chan->regs + ZYNQMP_DMA_IDS);

	FUNC2(chan);
	FUNC1(chan);
	FUNC3(chan);
	FUNC4(chan);
}