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
typedef  scalar_t__ u64 ;
typedef  size_t u32 ;
struct mbox_chan {int dummy; } ;
struct flexrm_ring {size_t num; size_t cmpl_read_offset; int /*<<< orphan*/  msg_cmpl_count; TYPE_2__* mbox; int /*<<< orphan*/  lock; int /*<<< orphan*/  requests_bmap; struct brcm_message** requests; scalar_t__ cmpl_base; scalar_t__ regs; } ;
struct brcm_message {int error; } ;
struct TYPE_3__ {struct mbox_chan* chans; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; TYPE_1__ controller; } ;

/* Variables and functions */
 size_t RING_CMPL_SIZE ; 
 scalar_t__ RING_CMPL_WRITE_PTR ; 
 size_t RING_DESC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t,unsigned long,...) ; 
 int FUNC3 (scalar_t__) ; 
 size_t FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct brcm_message*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbox_chan*,struct brcm_message*) ; 
 size_t FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct flexrm_ring *ring)
{
	u64 desc;
	int err, count = 0;
	unsigned long flags;
	struct brcm_message *msg = NULL;
	u32 reqid, cmpl_read_offset, cmpl_write_offset;
	struct mbox_chan *chan = &ring->mbox->controller.chans[ring->num];

	FUNC8(&ring->lock, flags);

	/*
	 * Get current completion read and write offset
	 *
	 * Note: We should read completion write pointer atleast once
	 * after we get a MSI interrupt because HW maintains internal
	 * MSI status which will allow next MSI interrupt only after
	 * completion write pointer is read.
	 */
	cmpl_write_offset = FUNC7(ring->regs + RING_CMPL_WRITE_PTR);
	cmpl_write_offset *= RING_DESC_SIZE;
	cmpl_read_offset = ring->cmpl_read_offset;
	ring->cmpl_read_offset = cmpl_write_offset;

	FUNC9(&ring->lock, flags);

	/* For each completed request notify mailbox clients */
	reqid = 0;
	while (cmpl_read_offset != cmpl_write_offset) {
		/* Dequeue next completion descriptor */
		desc = *((u64 *)(ring->cmpl_base + cmpl_read_offset));

		/* Next read offset */
		cmpl_read_offset += RING_DESC_SIZE;
		if (cmpl_read_offset == RING_CMPL_SIZE)
			cmpl_read_offset = 0;

		/* Decode error from completion descriptor */
		err = FUNC3(desc);
		if (err < 0) {
			FUNC2(ring->mbox->dev,
			"ring%d got completion desc=0x%lx with error %d\n",
			ring->num, (unsigned long)desc, err);
		}

		/* Determine request id from completion descriptor */
		reqid = FUNC4(desc);

		/* Determine message pointer based on reqid */
		msg = ring->requests[reqid];
		if (!msg) {
			FUNC2(ring->mbox->dev,
			"ring%d null msg pointer for completion desc=0x%lx\n",
			ring->num, (unsigned long)desc);
			continue;
		}

		/* Release reqid for recycling */
		ring->requests[reqid] = NULL;
		FUNC8(&ring->lock, flags);
		FUNC1(ring->requests_bmap, reqid, 0);
		FUNC9(&ring->lock, flags);

		/* Unmap DMA mappings */
		FUNC5(ring->mbox->dev, msg);

		/* Give-back message to mailbox client */
		msg->error = err;
		FUNC6(chan, msg);

		/* Increment number of completions processed */
		FUNC0(&ring->msg_cmpl_count);
		count++;
	}

	return count;
}