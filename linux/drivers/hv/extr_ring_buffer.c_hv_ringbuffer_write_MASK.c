#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct hv_ring_buffer_info {int /*<<< orphan*/  ring_lock; } ;
struct vmbus_channel {int out_full_flag; scalar_t__ rescind; int /*<<< orphan*/  out_full_first; int /*<<< orphan*/  out_full_total; struct hv_ring_buffer_info outbound; } ;
struct kvec {int iov_len; int /*<<< orphan*/ * iov_base; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODEV ; 
 int FUNC0 (struct hv_ring_buffer_info*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct hv_ring_buffer_info*) ; 
 int FUNC2 (struct hv_ring_buffer_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct hv_ring_buffer_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct hv_ring_buffer_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(struct vmbus_channel *channel,
			const struct kvec *kv_list, u32 kv_count)
{
	int i;
	u32 bytes_avail_towrite;
	u32 totalbytes_towrite = sizeof(u64);
	u32 next_write_location;
	u32 old_write;
	u64 prev_indices;
	unsigned long flags;
	struct hv_ring_buffer_info *outring_info = &channel->outbound;

	if (channel->rescind)
		return -ENODEV;

	for (i = 0; i < kv_count; i++)
		totalbytes_towrite += kv_list[i].iov_len;

	FUNC6(&outring_info->ring_lock, flags);

	bytes_avail_towrite = FUNC1(outring_info);

	/*
	 * If there is only room for the packet, assume it is full.
	 * Otherwise, the next time around, we think the ring buffer
	 * is empty since the read index == write index.
	 */
	if (bytes_avail_towrite <= totalbytes_towrite) {
		++channel->out_full_total;

		if (!channel->out_full_flag) {
			++channel->out_full_first;
			channel->out_full_flag = true;
		}

		FUNC7(&outring_info->ring_lock, flags);
		return -EAGAIN;
	}

	channel->out_full_flag = false;

	/* Write to the ring buffer */
	next_write_location = FUNC2(outring_info);

	old_write = next_write_location;

	for (i = 0; i < kv_count; i++) {
		next_write_location = FUNC0(outring_info,
						     next_write_location,
						     kv_list[i].iov_base,
						     kv_list[i].iov_len);
	}

	/* Set previous packet start */
	prev_indices = FUNC3(outring_info);

	next_write_location = FUNC0(outring_info,
					     next_write_location,
					     &prev_indices,
					     sizeof(u64));

	/* Issue a full memory barrier before updating the write index */
	FUNC8();

	/* Now, update the write location */
	FUNC4(outring_info, next_write_location);


	FUNC7(&outring_info->ring_lock, flags);

	FUNC5(old_write, channel);

	if (channel->rescind)
		return -ENODEV;

	return 0;
}