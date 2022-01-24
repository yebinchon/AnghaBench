#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct virt_dma_desc {int /*<<< orphan*/  tx; } ;
struct TYPE_4__ {scalar_t__ cookie; } ;
struct TYPE_6__ {TYPE_1__ tx; } ;
struct omap_desc {scalar_t__ dir; TYPE_3__ vd; scalar_t__ polled; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct omap_chan {TYPE_2__ vc; scalar_t__ running; scalar_t__ paused; struct omap_desc* desc; } ;
struct dma_tx_state {int /*<<< orphan*/  residue; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  scalar_t__ dma_cookie_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CCR ; 
 int CCR_ENABLE ; 
 int DMA_COMPLETE ; 
 scalar_t__ DMA_DEV_TO_MEM ; 
 int DMA_IN_PROGRESS ; 
 scalar_t__ DMA_MEM_TO_DEV ; 
 scalar_t__ DMA_MEM_TO_MEM ; 
 int DMA_PAUSED ; 
 int FUNC0 (struct dma_chan*,scalar_t__,struct dma_tx_state*) ; 
 int FUNC1 (struct omap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_desc*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct omap_chan*) ; 
 scalar_t__ FUNC5 (struct omap_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_chan*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct omap_chan* FUNC9 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 struct virt_dma_desc* FUNC12 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static enum dma_status FUNC13(struct dma_chan *chan,
	dma_cookie_t cookie, struct dma_tx_state *txstate)
{
	struct omap_chan *c = FUNC9(chan);
	enum dma_status ret;
	unsigned long flags;
	struct omap_desc *d = NULL;

	ret = FUNC0(chan, cookie, txstate);
	if (ret == DMA_COMPLETE)
		return ret;

	FUNC7(&c->vc.lock, flags);
	if (c->desc && c->desc->vd.tx.cookie == cookie)
		d = c->desc;

	if (!txstate)
		goto out;

	if (d) {
		dma_addr_t pos;

		if (d->dir == DMA_MEM_TO_DEV)
			pos = FUNC5(c);
		else if (d->dir == DMA_DEV_TO_MEM  || d->dir == DMA_MEM_TO_MEM)
			pos = FUNC4(c);
		else
			pos = 0;

		txstate->residue = FUNC3(d, pos);
	} else {
		struct virt_dma_desc *vd = FUNC12(&c->vc, cookie);

		if (vd)
			txstate->residue = FUNC2(
						FUNC10(&vd->tx));
		else
			txstate->residue = 0;
	}

out:
	if (ret == DMA_IN_PROGRESS && c->paused) {
		ret = DMA_PAUSED;
	} else if (d && d->polled && c->running) {
		uint32_t ccr = FUNC1(c, CCR);
		/*
		 * The channel is no longer active, set the return value
		 * accordingly and mark it as completed
		 */
		if (!(ccr & CCR_ENABLE)) {
			ret = DMA_COMPLETE;
			FUNC6(c);
			FUNC11(&d->vd);
		}
	}

	FUNC8(&c->vc.lock, flags);

	return ret;
}