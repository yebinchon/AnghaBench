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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct usb_dmac_chan {TYPE_1__ vc; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int DMA_COMPLETE ; 
 int FUNC0 (struct dma_chan*,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_tx_state*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct usb_dmac_chan* FUNC4 (struct dma_chan*) ; 
 unsigned int FUNC5 (struct usb_dmac_chan*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct usb_dmac_chan*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum dma_status FUNC7(struct dma_chan *chan,
					  dma_cookie_t cookie,
					  struct dma_tx_state *txstate)
{
	struct usb_dmac_chan *uchan = FUNC4(chan);
	enum dma_status status;
	unsigned int residue = 0;
	unsigned long flags;

	status = FUNC0(chan, cookie, txstate);
	/* a client driver will get residue after DMA_COMPLETE */
	if (!txstate)
		return status;

	FUNC2(&uchan->vc.lock, flags);
	if (status == DMA_COMPLETE)
		residue = FUNC6(uchan, cookie);
	else
		residue = FUNC5(uchan, cookie);
	FUNC3(&uchan->vc.lock, flags);

	FUNC1(txstate, residue);

	return status;
}