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
struct xgene_dma_ring {int cfgsize; int size; int /*<<< orphan*/  desc_vaddr; int /*<<< orphan*/  desc_paddr; int /*<<< orphan*/  buf_num; int /*<<< orphan*/  owner; int /*<<< orphan*/  id; scalar_t__ num; TYPE_1__* pdma; } ;
struct xgene_dma_chan {int /*<<< orphan*/  dev; TYPE_1__* pdma; } ;
typedef  enum xgene_dma_ring_cfgsize { ____Placeholder_xgene_dma_ring_cfgsize } xgene_dma_ring_cfgsize ;
struct TYPE_2__ {int /*<<< orphan*/  ring_num; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_dma_chan*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xgene_dma_chan*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xgene_dma_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgene_dma_ring*) ; 

__attribute__((used)) static int FUNC6(struct xgene_dma_chan *chan,
				     struct xgene_dma_ring *ring,
				     enum xgene_dma_ring_cfgsize cfgsize)
{
	int ret;

	/* Setup DMA ring descriptor variables */
	ring->pdma = chan->pdma;
	ring->cfgsize = cfgsize;
	ring->num = chan->pdma->ring_num++;
	ring->id = FUNC0(ring->owner, ring->buf_num);

	ret = FUNC3(chan, cfgsize);
	if (ret <= 0)
		return ret;
	ring->size = ret;

	/* Allocate memory for DMA ring descriptor */
	ring->desc_vaddr = FUNC2(chan->dev, ring->size,
					      &ring->desc_paddr, GFP_KERNEL);
	if (!ring->desc_vaddr) {
		FUNC1(chan, "Failed to allocate ring desc\n");
		return -ENOMEM;
	}

	/* Configure and enable DMA ring */
	FUNC4(ring);
	FUNC5(ring);

	return 0;
}