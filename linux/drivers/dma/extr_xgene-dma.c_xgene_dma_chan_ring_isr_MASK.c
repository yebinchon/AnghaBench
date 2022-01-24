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
struct xgene_dma_chan {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  rx_irq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *id)
{
	struct xgene_dma_chan *chan = (struct xgene_dma_chan *)id;

	FUNC0(!chan);

	/*
	 * Disable DMA channel IRQ until we process completed
	 * descriptors
	 */
	FUNC1(chan->rx_irq);

	/*
	 * Schedule the tasklet to handle all cleanup of the current
	 * transaction. It will start a new transaction if there is
	 * one pending.
	 */
	FUNC2(&chan->tasklet);

	return IRQ_HANDLED;
}