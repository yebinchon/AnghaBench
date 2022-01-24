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
typedef  scalar_t__ u32 ;
struct hv_ring_buffer_info {scalar_t__ priv_read_index; TYPE_2__* ring_buffer; } ;
struct vmbus_channel {int /*<<< orphan*/  intr_in_full; struct hv_ring_buffer_info inbound; } ;
struct TYPE_3__ {int /*<<< orphan*/  feat_pending_send_sz; } ;
struct TYPE_4__ {scalar_t__ read_index; int /*<<< orphan*/  pending_send_sz; TYPE_1__ feature_bits; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hv_ring_buffer_info*) ; 
 scalar_t__ FUNC2 (struct hv_ring_buffer_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct vmbus_channel*) ; 

void FUNC6(struct vmbus_channel *channel)
{
	struct hv_ring_buffer_info *rbi = &channel->inbound;
	u32 curr_write_sz, pending_sz, bytes_read, start_read_index;

	/*
	 * Make sure all reads are done before we update the read index since
	 * the writer may start writing to the read area once the read index
	 * is updated.
	 */
	FUNC4();
	start_read_index = rbi->ring_buffer->read_index;
	rbi->ring_buffer->read_index = rbi->priv_read_index;

	/*
	 * Older versions of Hyper-V (before WS2102 and Win8) do not
	 * implement pending_send_sz and simply poll if the host->guest
	 * ring buffer is full.  No signaling is needed or expected.
	 */
	if (!rbi->ring_buffer->feature_bits.feat_pending_send_sz)
		return;

	/*
	 * Issue a full memory barrier before making the signaling decision.
	 * If reading pending_send_sz were to be reordered and happen
	 * before we commit the new read_index, a race could occur.  If the
	 * host were to set the pending_send_sz after we have sampled
	 * pending_send_sz, and the ring buffer blocks before we commit the
	 * read index, we could miss sending the interrupt. Issue a full
	 * memory barrier to address this.
	 */
	FUNC3();

	/*
	 * If the pending_send_sz is zero, then the ring buffer is not
	 * blocked and there is no need to signal.  This is far by the
	 * most common case, so exit quickly for best performance.
	 */
	pending_sz = FUNC0(rbi->ring_buffer->pending_send_sz);
	if (!pending_sz)
		return;

	/*
	 * Ensure the read of write_index in hv_get_bytes_to_write()
	 * happens after the read of pending_send_sz.
	 */
	FUNC4();
	curr_write_sz = FUNC1(rbi);
	bytes_read = FUNC2(rbi, start_read_index);

	/*
	 * We want to signal the host only if we're transitioning
	 * from a "not enough free space" state to a "enough free
	 * space" state.  For example, it's possible that this function
	 * could run and free up enough space to signal the host, and then
	 * run again and free up additional space before the host has a
	 * chance to clear the pending_send_sz.  The 2nd invocation would
	 * be a null transition from "enough free space" to "enough free
	 * space", which doesn't warrant a signal.
	 *
	 * Exactly filling the ring buffer is treated as "not enough
	 * space". The ring buffer always must have at least one byte
	 * empty so the empty and full conditions are distinguishable.
	 * hv_get_bytes_to_write() doesn't fully tell the truth in
	 * this regard.
	 *
	 * So first check if we were in the "enough free space" state
	 * before we began the iteration. If so, the host was not
	 * blocked, and there's no need to signal.
	 */
	if (curr_write_sz - bytes_read > pending_sz)
		return;

	/*
	 * Similarly, if the new state is "not enough space", then
	 * there's no need to signal.
	 */
	if (curr_write_sz <= pending_sz)
		return;

	++channel->intr_in_full;
	FUNC5(channel);
}