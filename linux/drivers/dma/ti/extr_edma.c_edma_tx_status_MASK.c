#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct virt_dma_desc {int /*<<< orphan*/  tx; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
struct edma_chan {TYPE_2__ vchan; TYPE_5__* edesc; } ;
struct dma_tx_state {int /*<<< orphan*/  residue; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  scalar_t__ dma_cookie_t ;
struct TYPE_6__ {scalar_t__ cookie; } ;
struct TYPE_8__ {TYPE_1__ tx; } ;
struct TYPE_10__ {TYPE_3__ vdesc; scalar_t__ polled; } ;
struct TYPE_9__ {int /*<<< orphan*/  residue; } ;

/* Variables and functions */
 int DMA_COMPLETE ; 
 int FUNC0 (struct dma_chan*,scalar_t__,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct edma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (struct edma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct edma_chan* FUNC6 (struct dma_chan*) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 struct virt_dma_desc* FUNC9 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static enum dma_status FUNC10(struct dma_chan *chan,
				      dma_cookie_t cookie,
				      struct dma_tx_state *txstate)
{
	struct edma_chan *echan = FUNC6(chan);
	struct dma_tx_state txstate_tmp;
	enum dma_status ret;
	unsigned long flags;

	ret = FUNC0(chan, cookie, txstate);

	if (ret == DMA_COMPLETE)
		return ret;

	/* Provide a dummy dma_tx_state for completion checking */
	if (!txstate)
		txstate = &txstate_tmp;

	FUNC4(&echan->vchan.lock, flags);
	if (echan->edesc && echan->edesc->vdesc.tx.cookie == cookie) {
		txstate->residue = FUNC2(echan->edesc);
	} else {
		struct virt_dma_desc *vdesc = FUNC9(&echan->vchan,
							      cookie);

		if (vdesc)
			txstate->residue = FUNC7(&vdesc->tx)->residue;
		else
			txstate->residue = 0;
	}

	/*
	 * Mark the cookie completed if the residue is 0 for non cyclic
	 * transfers
	 */
	if (ret != DMA_COMPLETE && !txstate->residue &&
	    echan->edesc && echan->edesc->polled &&
	    echan->edesc->vdesc.tx.cookie == cookie) {
		FUNC3(echan);
		FUNC8(&echan->edesc->vdesc);
		echan->edesc = NULL;
		FUNC1(echan);
		ret = DMA_COMPLETE;
	}

	FUNC5(&echan->vchan.lock, flags);

	return ret;
}