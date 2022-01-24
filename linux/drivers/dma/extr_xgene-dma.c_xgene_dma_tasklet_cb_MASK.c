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
struct xgene_dma_chan {int /*<<< orphan*/  rx_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_dma_chan*) ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	struct xgene_dma_chan *chan = (struct xgene_dma_chan *)data;

	/* Run all cleanup for descriptors which have been completed */
	FUNC1(chan);

	/* Re-enable DMA channel IRQ */
	FUNC0(chan->rx_irq);
}