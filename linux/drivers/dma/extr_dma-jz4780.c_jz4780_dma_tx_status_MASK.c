#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ cookie; } ;
struct virt_dma_desc {TYPE_1__ tx; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct jz4780_dma_chan {TYPE_2__ vchan; TYPE_3__* desc; scalar_t__ curr_hwdesc; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  scalar_t__ dma_cookie_t ;
struct TYPE_7__ {int status; struct virt_dma_desc vdesc; } ;

/* Variables and functions */
 int DMA_COMPLETE ; 
 int DMA_ERROR ; 
 int JZ_DMA_DCS_AR ; 
 int JZ_DMA_DCS_HLT ; 
 int FUNC0 (struct dma_chan*,scalar_t__,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_tx_state*,unsigned long) ; 
 unsigned long FUNC2 (struct jz4780_dma_chan*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct jz4780_dma_chan* FUNC5 (struct dma_chan*) ; 
 TYPE_3__* FUNC6 (struct virt_dma_desc*) ; 
 struct virt_dma_desc* FUNC7 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static enum dma_status FUNC8(struct dma_chan *chan,
	dma_cookie_t cookie, struct dma_tx_state *txstate)
{
	struct jz4780_dma_chan *jzchan = FUNC5(chan);
	struct virt_dma_desc *vdesc;
	enum dma_status status;
	unsigned long flags;
	unsigned long residue = 0;

	status = FUNC0(chan, cookie, txstate);
	if ((status == DMA_COMPLETE) || (txstate == NULL))
		return status;

	FUNC3(&jzchan->vchan.lock, flags);

	vdesc = FUNC7(&jzchan->vchan, cookie);
	if (vdesc) {
		/* On the issued list, so hasn't been processed yet */
		residue = FUNC2(jzchan,
					FUNC6(vdesc), 0);
	} else if (cookie == jzchan->desc->vdesc.tx.cookie) {
		residue = FUNC2(jzchan, jzchan->desc,
					jzchan->curr_hwdesc + 1);
	}
	FUNC1(txstate, residue);

	if (vdesc && jzchan->desc && vdesc == &jzchan->desc->vdesc
	    && jzchan->desc->status & (JZ_DMA_DCS_AR | JZ_DMA_DCS_HLT))
		status = DMA_ERROR;

	FUNC4(&jzchan->vchan.lock, flags);
	return status;
}