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
struct hv_ring_buffer_info {int /*<<< orphan*/  ring_buffer_mutex; TYPE_1__* ring_buffer; } ;
struct vmbus_channel {struct hv_ring_buffer_info outbound; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int interrupt_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct vmbus_channel *channel, char *buf)
{
	struct hv_ring_buffer_info *rbi = &channel->outbound;
	ssize_t ret;

	FUNC0(&rbi->ring_buffer_mutex);
	if (!rbi->ring_buffer) {
		FUNC1(&rbi->ring_buffer_mutex);
		return -EINVAL;
	}

	ret = FUNC2(buf, "%u\n", rbi->ring_buffer->interrupt_mask);
	FUNC1(&rbi->ring_buffer_mutex);
	return ret;
}