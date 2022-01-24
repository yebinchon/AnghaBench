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
struct rcar_dmac_xfer_chunk {int /*<<< orphan*/  node; } ;
struct rcar_dmac_desc_page {int /*<<< orphan*/  node; struct rcar_dmac_xfer_chunk* chunks; } ;
struct TYPE_2__ {int /*<<< orphan*/  pages; int /*<<< orphan*/  chunks_free; } ;
struct rcar_dmac_chan {int /*<<< orphan*/  lock; TYPE_1__ desc; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int RCAR_DMAC_XFER_CHUNKS_PER_PAGE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct rcar_dmac_chan *chan, gfp_t gfp)
{
	struct rcar_dmac_desc_page *page;
	unsigned long flags;
	FUNC0(list);
	unsigned int i;

	page = (void *)FUNC1(gfp);
	if (!page)
		return -ENOMEM;

	for (i = 0; i < RCAR_DMAC_XFER_CHUNKS_PER_PAGE; ++i) {
		struct rcar_dmac_xfer_chunk *chunk = &page->chunks[i];

		FUNC2(&chunk->node, &list);
	}

	FUNC4(&chan->lock, flags);
	FUNC3(&list, &chan->desc.chunks_free);
	FUNC2(&page->node, &chan->desc.pages);
	FUNC5(&chan->lock, flags);

	return 0;
}