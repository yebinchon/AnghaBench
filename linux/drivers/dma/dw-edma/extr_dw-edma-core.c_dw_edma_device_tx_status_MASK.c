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
typedef  scalar_t__ u32 ;
struct virt_dma_desc {int dummy; } ;
struct dw_edma_desc {scalar_t__ xfer_sz; scalar_t__ alloc_sz; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct dw_edma_chan {scalar_t__ status; TYPE_1__ vc; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int DMA_COMPLETE ; 
 int DMA_IN_PROGRESS ; 
 int DMA_PAUSED ; 
 scalar_t__ EDMA_ST_PAUSE ; 
 struct dw_edma_chan* FUNC0 (struct dma_chan*) ; 
 int FUNC1 (struct dma_chan*,int /*<<< orphan*/ ,struct dma_tx_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_tx_state*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct virt_dma_desc* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct dw_edma_desc* FUNC6 (struct virt_dma_desc*) ; 

__attribute__((used)) static enum dma_status
FUNC7(struct dma_chan *dchan, dma_cookie_t cookie,
			 struct dma_tx_state *txstate)
{
	struct dw_edma_chan *chan = FUNC0(dchan);
	struct dw_edma_desc *desc;
	struct virt_dma_desc *vd;
	unsigned long flags;
	enum dma_status ret;
	u32 residue = 0;

	ret = FUNC1(dchan, cookie, txstate);
	if (ret == DMA_COMPLETE)
		return ret;

	if (ret == DMA_IN_PROGRESS && chan->status == EDMA_ST_PAUSE)
		ret = DMA_PAUSED;

	if (!txstate)
		goto ret_residue;

	FUNC3(&chan->vc.lock, flags);
	vd = FUNC5(&chan->vc, cookie);
	if (vd) {
		desc = FUNC6(vd);
		if (desc)
			residue = desc->alloc_sz - desc->xfer_sz;
	}
	FUNC4(&chan->vc.lock, flags);

ret_residue:
	FUNC2(txstate, residue);

	return ret;
}