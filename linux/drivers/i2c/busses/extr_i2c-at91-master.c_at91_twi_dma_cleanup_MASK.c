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
struct at91_twi_dma {int xfer_in_progress; scalar_t__ direction; int buf_mapped; int /*<<< orphan*/ * sg; int /*<<< orphan*/  chan_tx; int /*<<< orphan*/  chan_rx; } ;
struct at91_twi_dev {int /*<<< orphan*/  buf_len; int /*<<< orphan*/  dev; struct at91_twi_dma dma; } ;

/* Variables and functions */
 scalar_t__ DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct at91_twi_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct at91_twi_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct at91_twi_dev *dev)
{
	struct at91_twi_dma *dma = &dev->dma;

	FUNC1(dev);

	if (dma->xfer_in_progress) {
		if (dma->direction == DMA_FROM_DEVICE)
			FUNC3(dma->chan_rx);
		else
			FUNC3(dma->chan_tx);
		dma->xfer_in_progress = false;
	}
	if (dma->buf_mapped) {
		FUNC2(dev->dev, FUNC4(&dma->sg[0]),
				 dev->buf_len, dma->direction);
		dma->buf_mapped = false;
	}

	FUNC0(dev);
}