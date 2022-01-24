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
struct TYPE_2__ {scalar_t__ phys; int /*<<< orphan*/  tx_submit; } ;
struct mv_xor_desc_slot {int /*<<< orphan*/  node; int /*<<< orphan*/  idx; TYPE_1__ async_tx; int /*<<< orphan*/  sg_tx_list; void* hw_desc; } ;
struct mv_xor_chan {int slots_allocated; int /*<<< orphan*/  lock; int /*<<< orphan*/  free_slots; scalar_t__ dma_desc_pool; void* dma_desc_pool_virt; } ;
struct dma_chan {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MV_XOR_POOL_SIZE ; 
 int MV_XOR_SLOT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct dma_chan*) ; 
 struct mv_xor_desc_slot* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mv_xor_chan*) ; 
 int /*<<< orphan*/  mv_xor_tx_submit ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct mv_xor_chan* FUNC9 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC10(struct dma_chan *chan)
{
	void *virt_desc;
	dma_addr_t dma_desc;
	int idx;
	struct mv_xor_chan *mv_chan = FUNC9(chan);
	struct mv_xor_desc_slot *slot = NULL;
	int num_descs_in_pool = MV_XOR_POOL_SIZE/MV_XOR_SLOT_SIZE;

	/* Allocate descriptor slots */
	idx = mv_chan->slots_allocated;
	while (idx < num_descs_in_pool) {
		slot = FUNC4(sizeof(*slot), GFP_KERNEL);
		if (!slot) {
			FUNC2(FUNC6(mv_chan),
				 "channel only initialized %d descriptor slots",
				 idx);
			break;
		}
		virt_desc = mv_chan->dma_desc_pool_virt;
		slot->hw_desc = virt_desc + idx * MV_XOR_SLOT_SIZE;

		FUNC3(&slot->async_tx, chan);
		slot->async_tx.tx_submit = mv_xor_tx_submit;
		FUNC0(&slot->node);
		FUNC0(&slot->sg_tx_list);
		dma_desc = mv_chan->dma_desc_pool;
		slot->async_tx.phys = dma_desc + idx * MV_XOR_SLOT_SIZE;
		slot->idx = idx++;

		FUNC7(&mv_chan->lock);
		mv_chan->slots_allocated = idx;
		FUNC5(&slot->node, &mv_chan->free_slots);
		FUNC8(&mv_chan->lock);
	}

	FUNC1(FUNC6(mv_chan),
		"allocated %d descriptor slots\n",
		mv_chan->slots_allocated);

	return mv_chan->slots_allocated ? : -ENOMEM;
}