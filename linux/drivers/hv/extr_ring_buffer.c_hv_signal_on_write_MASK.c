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
typedef  scalar_t__ u32 ;
struct hv_ring_buffer_info {TYPE_1__* ring_buffer; } ;
struct vmbus_channel {int /*<<< orphan*/  intr_out_empty; struct hv_ring_buffer_info outbound; } ;
struct TYPE_2__ {int /*<<< orphan*/  read_index; int /*<<< orphan*/  interrupt_mask; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct vmbus_channel*) ; 

__attribute__((used)) static void FUNC4(u32 old_write, struct vmbus_channel *channel)
{
	struct hv_ring_buffer_info *rbi = &channel->outbound;

	FUNC1();
	if (FUNC0(rbi->ring_buffer->interrupt_mask))
		return;

	/* check interrupt_mask before read_index */
	FUNC2();
	/*
	 * This is the only case we need to signal when the
	 * ring transitions from being empty to non-empty.
	 */
	if (old_write == FUNC0(rbi->ring_buffer->read_index)) {
		++channel->intr_out_empty;
		FUNC3(channel);
	}
}