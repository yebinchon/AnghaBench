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
typedef  int u64 ;
typedef  int u32 ;
struct ioatdma_chan {int alloc_order; scalar_t__ reg_base; TYPE_1__* ioat_dma; int /*<<< orphan*/  cleanup_lock; int /*<<< orphan*/  prep_lock; int /*<<< orphan*/  state; scalar_t__ tail; scalar_t__ issued; scalar_t__ head; struct ioat_ring_ent** ring; scalar_t__ completion_dma; int /*<<< orphan*/  completion; } ;
struct ioat_ring_ent {int dummy; } ;
struct dma_chan {int dummy; } ;
struct TYPE_2__ {scalar_t__ version; int /*<<< orphan*/  completion_pool; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 scalar_t__ IOAT_CHANCMP_OFFSET_HIGH ; 
 scalar_t__ IOAT_CHANCMP_OFFSET_LOW ; 
 scalar_t__ IOAT_CHANCTRL_OFFSET ; 
 int /*<<< orphan*/  IOAT_CHANCTRL_RUN ; 
 scalar_t__ IOAT_CHANERR_OFFSET ; 
 scalar_t__ IOAT_CHAN_LTR_ACTIVE_OFFSET ; 
 int IOAT_CHAN_LTR_ACTIVE_SNLATSCALE ; 
 int IOAT_CHAN_LTR_ACTIVE_SNREQMNT ; 
 int IOAT_CHAN_LTR_ACTIVE_SNVAL ; 
 scalar_t__ IOAT_CHAN_LTR_IDLE_OFFSET ; 
 int IOAT_CHAN_LTR_IDLE_SNLATSCALE ; 
 int IOAT_CHAN_LTR_IDLE_SNREQMNT ; 
 int IOAT_CHAN_LTR_IDLE_SNVAL ; 
 int /*<<< orphan*/  IOAT_CHAN_LTR_SWSEL_ACTIVE ; 
 scalar_t__ IOAT_CHAN_LTR_SWSEL_OFFSET ; 
 int IOAT_MAX_ORDER ; 
 int /*<<< orphan*/  IOAT_RUN ; 
 scalar_t__ IOAT_VER_3_4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct ioat_ring_ent** FUNC2 (struct dma_chan*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ioatdma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct ioatdma_chan*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct ioatdma_chan*) ; 
 struct ioatdma_chan* FUNC13 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC18(struct dma_chan *c)
{
	struct ioatdma_chan *ioat_chan = FUNC13(c);
	struct ioat_ring_ent **ring;
	u64 status;
	int order;
	int i = 0;
	u32 chanerr;

	/* have we already been set up? */
	if (ioat_chan->ring)
		return 1 << ioat_chan->alloc_order;

	/* Setup register to interrupt and write completion status on error */
	FUNC17(IOAT_CHANCTRL_RUN, ioat_chan->reg_base + IOAT_CHANCTRL_OFFSET);

	/* allocate a completion writeback area */
	/* doing 2 32bit writes to mmio since 1 64b write doesn't work */
	ioat_chan->completion =
		FUNC1(ioat_chan->ioat_dma->completion_pool,
				GFP_NOWAIT, &ioat_chan->completion_dma);
	if (!ioat_chan->completion)
		return -ENOMEM;

	FUNC16(((u64)ioat_chan->completion_dma) & 0x00000000FFFFFFFF,
	       ioat_chan->reg_base + IOAT_CHANCMP_OFFSET_LOW);
	FUNC16(((u64)ioat_chan->completion_dma) >> 32,
	       ioat_chan->reg_base + IOAT_CHANCMP_OFFSET_HIGH);

	order = IOAT_MAX_ORDER;
	ring = FUNC2(c, order, GFP_NOWAIT);
	if (!ring)
		return -ENOMEM;

	FUNC10(&ioat_chan->cleanup_lock);
	FUNC10(&ioat_chan->prep_lock);
	ioat_chan->ring = ring;
	ioat_chan->head = 0;
	ioat_chan->issued = 0;
	ioat_chan->tail = 0;
	ioat_chan->alloc_order = order;
	FUNC9(IOAT_RUN, &ioat_chan->state);
	FUNC11(&ioat_chan->prep_lock);
	FUNC11(&ioat_chan->cleanup_lock);

	/* Setting up LTR values for 3.4 or later */
	if (ioat_chan->ioat_dma->version >= IOAT_VER_3_4) {
		u32 lat_val;

		lat_val = IOAT_CHAN_LTR_ACTIVE_SNVAL |
			IOAT_CHAN_LTR_ACTIVE_SNLATSCALE |
			IOAT_CHAN_LTR_ACTIVE_SNREQMNT;
		FUNC16(lat_val, ioat_chan->reg_base +
				IOAT_CHAN_LTR_ACTIVE_OFFSET);

		lat_val = IOAT_CHAN_LTR_IDLE_SNVAL |
			  IOAT_CHAN_LTR_IDLE_SNLATSCALE |
			  IOAT_CHAN_LTR_IDLE_SNREQMNT;
		FUNC16(lat_val, ioat_chan->reg_base +
				IOAT_CHAN_LTR_IDLE_OFFSET);

		/* Select to active */
		FUNC15(IOAT_CHAN_LTR_SWSEL_ACTIVE,
		       ioat_chan->reg_base +
		       IOAT_CHAN_LTR_SWSEL_OFFSET);
	}

	FUNC5(ioat_chan);

	/* check that we got off the ground */
	do {
		FUNC14(1);
		status = FUNC3(ioat_chan);
	} while (i++ < 20 && !FUNC6(status) && !FUNC7(status));

	if (FUNC6(status) || FUNC7(status))
		return 1 << ioat_chan->alloc_order;

	chanerr = FUNC8(ioat_chan->reg_base + IOAT_CHANERR_OFFSET);

	FUNC0(FUNC12(ioat_chan),
		 "failed to start channel chanerr: %#x\n", chanerr);
	FUNC4(c);
	return -EFAULT;
}