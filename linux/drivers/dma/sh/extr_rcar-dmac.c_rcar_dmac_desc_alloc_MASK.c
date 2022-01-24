#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rcar_dmac_desc_page {int /*<<< orphan*/  node; struct rcar_dmac_desc* descs; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_submit; } ;
struct rcar_dmac_desc {int /*<<< orphan*/  node; int /*<<< orphan*/  chunks; TYPE_2__ async_tx; } ;
struct TYPE_3__ {int /*<<< orphan*/  pages; int /*<<< orphan*/  free; } ;
struct rcar_dmac_chan {int /*<<< orphan*/  lock; TYPE_1__ desc; int /*<<< orphan*/  chan; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int RCAR_DMAC_DESCS_PER_PAGE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcar_dmac_tx_submit ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct rcar_dmac_chan *chan, gfp_t gfp)
{
	struct rcar_dmac_desc_page *page;
	unsigned long flags;
	FUNC1(list);
	unsigned int i;

	page = (void *)FUNC3(gfp);
	if (!page)
		return -ENOMEM;

	for (i = 0; i < RCAR_DMAC_DESCS_PER_PAGE; ++i) {
		struct rcar_dmac_desc *desc = &page->descs[i];

		FUNC2(&desc->async_tx, &chan->chan);
		desc->async_tx.tx_submit = rcar_dmac_tx_submit;
		FUNC0(&desc->chunks);

		FUNC4(&desc->node, &list);
	}

	FUNC6(&chan->lock, flags);
	FUNC5(&list, &chan->desc.free);
	FUNC4(&page->node, &chan->desc.pages);
	FUNC7(&chan->lock, flags);

	return 0;
}