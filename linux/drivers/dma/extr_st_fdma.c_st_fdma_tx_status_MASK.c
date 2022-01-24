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
struct st_fdma_chan {TYPE_4__ vchan; TYPE_3__* fdesc; } ;
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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 void* FUNC3 (struct st_fdma_chan*,struct virt_dma_desc*,int) ; 
 struct st_fdma_chan* FUNC4 (struct dma_chan*) ; 
 struct virt_dma_desc* FUNC5 (TYPE_4__*,scalar_t__) ; 

__attribute__((used)) static enum dma_status FUNC6(struct dma_chan *chan,
					 dma_cookie_t cookie,
					 struct dma_tx_state *txstate)
{
	struct st_fdma_chan *fchan = FUNC4(chan);
	struct virt_dma_desc *vd;
	enum dma_status ret;
	unsigned long flags;

	ret = FUNC0(chan, cookie, txstate);
	if (ret == DMA_COMPLETE || !txstate)
		return ret;

	FUNC1(&fchan->vchan.lock, flags);
	vd = FUNC5(&fchan->vchan, cookie);
	if (fchan->fdesc && cookie == fchan->fdesc->vdesc.tx.cookie)
		txstate->residue = FUNC3(fchan, vd, true);
	else if (vd)
		txstate->residue = FUNC3(fchan, vd, false);
	else
		txstate->residue = 0;

	FUNC2(&fchan->vchan.lock, flags);

	return ret;
}