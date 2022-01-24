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
typedef  int /*<<< orphan*/  u8 ;
struct pl330_dmac {int /*<<< orphan*/  pcfg; int /*<<< orphan*/  pool_lock; int /*<<< orphan*/  desc_pool; } ;
struct TYPE_6__ {scalar_t__ cookie; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pcfg; } ;
struct dma_pl330_desc {TYPE_2__ txd; TYPE_1__ rqcfg; int /*<<< orphan*/  peri; struct dma_pl330_chan* pchan; } ;
struct TYPE_7__ {int /*<<< orphan*/  chan_id; int /*<<< orphan*/ * private; } ;
struct dma_pl330_chan {TYPE_3__ chan; struct pl330_dmac* dmac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lock ; 
 struct dma_pl330_desc* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pool ; 

__attribute__((used)) static struct dma_pl330_desc *FUNC8(struct dma_pl330_chan *pch)
{
	struct pl330_dmac *pl330 = pch->dmac;
	u8 *peri_id = pch->chan.private;
	struct dma_pl330_desc *desc;

	/* Pluck one desc from the pool of DMAC */
	desc = FUNC7(&pl330->desc_pool, &pl330->pool_lock);

	/* If the DMAC pool is empty, alloc new */
	if (!desc) {
		FUNC0(lock);
		FUNC1(pool);

		if (!FUNC3(&pool, &lock, GFP_ATOMIC, 1))
			return NULL;

		desc = FUNC7(&pool, &lock);
		FUNC2(!desc || !FUNC6(&pool));
	}

	/* Initialize the descriptor */
	desc->pchan = pch;
	desc->txd.cookie = 0;
	FUNC4(&desc->txd);

	desc->peri = peri_id ? pch->chan.chan_id : 0;
	desc->rqcfg.pcfg = &pch->dmac->pcfg;

	FUNC5(&desc->txd, &pch->chan);

	return desc;
}