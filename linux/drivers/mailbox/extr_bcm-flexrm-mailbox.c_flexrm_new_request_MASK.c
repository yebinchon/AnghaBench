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
typedef  int u32 ;
struct flexrm_ring {int bd_write_offset; void* bd_base; int /*<<< orphan*/  lock; int /*<<< orphan*/  requests_bmap; struct brcm_message** requests; TYPE_1__* mbox; int /*<<< orphan*/  msg_send_count; scalar_t__ bd_dma_base; scalar_t__ regs; } ;
struct brcm_message {int error; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EIO ; 
 int ENOSPC ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 scalar_t__ RING_BD_READ_PTR ; 
 int RING_BD_SIZE ; 
 scalar_t__ RING_BD_START_ADDR ; 
 int /*<<< orphan*/  FUNC3 (long) ; 
 int RING_DESC_SIZE ; 
 int /*<<< orphan*/  RING_MAX_REQ_COUNT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct brcm_message*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct brcm_message*) ; 
 int FUNC9 (int) ; 
 int FUNC10 (struct brcm_message*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcm_message*) ; 
 void* FUNC13 (struct brcm_message*,int,int,void*,int /*<<< orphan*/ ,void*,void*) ; 
 int FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC17(struct flexrm_ring *ring,
				struct brcm_message *batch_msg,
				struct brcm_message *msg)
{
	void *next;
	unsigned long flags;
	u32 val, count, nhcnt;
	u32 read_offset, write_offset;
	bool exit_cleanup = false;
	int ret = 0, reqid;

	/* Do sanity check on message */
	if (!FUNC12(msg))
		return -EIO;
	msg->error = 0;

	/* If no requests possible then save data pointer and goto done. */
	FUNC15(&ring->lock, flags);
	reqid = FUNC5(ring->requests_bmap,
					RING_MAX_REQ_COUNT, 0);
	FUNC16(&ring->lock, flags);
	if (reqid < 0)
		return -ENOSPC;
	ring->requests[reqid] = msg;

	/* Do DMA mappings for the message */
	ret = FUNC7(ring->mbox->dev, msg);
	if (ret < 0) {
		ring->requests[reqid] = NULL;
		FUNC15(&ring->lock, flags);
		FUNC6(ring->requests_bmap, reqid, 0);
		FUNC16(&ring->lock, flags);
		return ret;
	}

	/* Determine current HW BD read offset */
	read_offset = FUNC14(ring->regs + RING_BD_READ_PTR);
	val = FUNC14(ring->regs + RING_BD_START_ADDR);
	read_offset *= RING_DESC_SIZE;
	read_offset += (u32)(FUNC0(val) - ring->bd_dma_base);

	/*
	 * Number required descriptors = number of non-header descriptors +
	 *				 number of header descriptors +
	 *				 1x null descriptor
	 */
	nhcnt = FUNC10(msg);
	count = FUNC9(nhcnt) + nhcnt + 1;

	/* Check for available descriptor space. */
	write_offset = ring->bd_write_offset;
	while (count) {
		if (!FUNC11(ring->bd_base + write_offset))
			count--;
		write_offset += RING_DESC_SIZE;
		if (write_offset == RING_BD_SIZE)
			write_offset = 0x0;
		if (write_offset == read_offset)
			break;
	}
	if (count) {
		ret = -ENOSPC;
		exit_cleanup = true;
		goto exit;
	}

	/* Write descriptors to ring */
	next = FUNC13(msg, nhcnt, reqid,
			ring->bd_base + ring->bd_write_offset,
			FUNC3(ring->bd_write_offset),
			ring->bd_base, ring->bd_base + RING_BD_SIZE);
	if (FUNC1(next)) {
		ret = FUNC2(next);
		exit_cleanup = true;
		goto exit;
	}

	/* Save ring BD write offset */
	ring->bd_write_offset = (unsigned long)(next - ring->bd_base);

	/* Increment number of messages sent */
	FUNC4(&ring->msg_send_count);

exit:
	/* Update error status in message */
	msg->error = ret;

	/* Cleanup if we failed */
	if (exit_cleanup) {
		FUNC8(ring->mbox->dev, msg);
		ring->requests[reqid] = NULL;
		FUNC15(&ring->lock, flags);
		FUNC6(ring->requests_bmap, reqid, 0);
		FUNC16(&ring->lock, flags);
	}

	return ret;
}