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
struct ioatdma_device {scalar_t__ version; int /*<<< orphan*/  completion_pool; } ;
struct ioatdma_chan {int alloc_order; int desc_chunks; scalar_t__ dmacount; scalar_t__ completion_dma; scalar_t__ last_completion; int /*<<< orphan*/  cleanup_lock; int /*<<< orphan*/  prep_lock; int /*<<< orphan*/  completion; int /*<<< orphan*/ * ring; TYPE_1__* descs; scalar_t__ tail; scalar_t__ head; scalar_t__ reg_base; struct ioatdma_device* ioat_dma; } ;
struct ioat_ring_ent {int dummy; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {scalar_t__ hw; int /*<<< orphan*/ * virt; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOAT_CHAN_LTR_SWSEL_IDLE ; 
 scalar_t__ IOAT_CHAN_LTR_SWSEL_OFFSET ; 
 scalar_t__ IOAT_VER_3_4 ; 
 int /*<<< orphan*/  SZ_2M ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ioatdma_chan*,struct ioat_ring_ent*) ; 
 int /*<<< orphan*/  FUNC5 (struct ioat_ring_ent*,struct dma_chan*) ; 
 struct ioat_ring_ent* FUNC6 (struct ioatdma_chan*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ioatdma_chan*) ; 
 int FUNC8 (struct ioatdma_chan*) ; 
 int /*<<< orphan*/  FUNC9 (struct ioatdma_chan*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ioatdma_chan*) ; 
 struct ioatdma_chan* FUNC14 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC16(struct dma_chan *c)
{
	struct ioatdma_chan *ioat_chan = FUNC14(c);
	struct ioatdma_device *ioat_dma = ioat_chan->ioat_dma;
	struct ioat_ring_ent *desc;
	const int total_descs = 1 << ioat_chan->alloc_order;
	int descs;
	int i;

	/* Before freeing channel resources first check
	 * if they have been previously allocated for this channel.
	 */
	if (!ioat_chan->ring)
		return;

	FUNC9(ioat_chan);
	FUNC7(ioat_chan);

	/* Put LTR to idle */
	if (ioat_dma->version >= IOAT_VER_3_4)
		FUNC15(IOAT_CHAN_LTR_SWSEL_IDLE,
			ioat_chan->reg_base + IOAT_CHAN_LTR_SWSEL_OFFSET);

	FUNC11(&ioat_chan->cleanup_lock);
	FUNC11(&ioat_chan->prep_lock);
	descs = FUNC8(ioat_chan);
	FUNC0(FUNC13(ioat_chan), "freeing %d idle descriptors\n", descs);
	for (i = 0; i < descs; i++) {
		desc = FUNC6(ioat_chan, ioat_chan->head + i);
		FUNC5(desc, c);
	}

	if (descs < total_descs)
		FUNC1(FUNC13(ioat_chan), "Freeing %d in use descriptors!\n",
			total_descs - descs);

	for (i = 0; i < total_descs - descs; i++) {
		desc = FUNC6(ioat_chan, ioat_chan->tail + i);
		FUNC4(ioat_chan, desc);
		FUNC5(desc, c);
	}

	for (i = 0; i < ioat_chan->desc_chunks; i++) {
		FUNC2(FUNC13(ioat_chan), SZ_2M,
				  ioat_chan->descs[i].virt,
				  ioat_chan->descs[i].hw);
		ioat_chan->descs[i].virt = NULL;
		ioat_chan->descs[i].hw = 0;
	}
	ioat_chan->desc_chunks = 0;

	FUNC10(ioat_chan->ring);
	ioat_chan->ring = NULL;
	ioat_chan->alloc_order = 0;
	FUNC3(ioat_dma->completion_pool, ioat_chan->completion,
		      ioat_chan->completion_dma);
	FUNC12(&ioat_chan->prep_lock);
	FUNC12(&ioat_chan->cleanup_lock);

	ioat_chan->last_completion = 0;
	ioat_chan->completion_dma = 0;
	ioat_chan->dmacount = 0;
}