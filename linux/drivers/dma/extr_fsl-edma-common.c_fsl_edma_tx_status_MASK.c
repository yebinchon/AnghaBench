#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct virt_dma_desc {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct fsl_edma_chan {int status; TYPE_4__ vchan; TYPE_3__* edesc; } ;
struct dma_tx_state {void* residue; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  scalar_t__ dma_cookie_t ;
struct TYPE_5__ {scalar_t__ cookie; } ;
struct TYPE_6__ {TYPE_1__ tx; } ;
struct TYPE_7__ {TYPE_2__ vdesc; } ;

/* Variables and functions */
 int DMA_COMPLETE ; 
 int FUNC0 (struct dma_chan*,scalar_t__,struct dma_tx_state*) ; 
 void* FUNC1 (struct fsl_edma_chan*,struct virt_dma_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct fsl_edma_chan* FUNC4 (struct dma_chan*) ; 
 struct virt_dma_desc* FUNC5 (TYPE_4__*,scalar_t__) ; 

enum dma_status FUNC6(struct dma_chan *chan,
		dma_cookie_t cookie, struct dma_tx_state *txstate)
{
	struct fsl_edma_chan *fsl_chan = FUNC4(chan);
	struct virt_dma_desc *vdesc;
	enum dma_status status;
	unsigned long flags;

	status = FUNC0(chan, cookie, txstate);
	if (status == DMA_COMPLETE)
		return status;

	if (!txstate)
		return fsl_chan->status;

	FUNC2(&fsl_chan->vchan.lock, flags);
	vdesc = FUNC5(&fsl_chan->vchan, cookie);
	if (fsl_chan->edesc && cookie == fsl_chan->edesc->vdesc.tx.cookie)
		txstate->residue =
			FUNC1(fsl_chan, vdesc, true);
	else if (vdesc)
		txstate->residue =
			FUNC1(fsl_chan, vdesc, false);
	else
		txstate->residue = 0;

	FUNC3(&fsl_chan->vchan.lock, flags);

	return fsl_chan->status;
}