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
struct hv_ring_buffer_info {int /*<<< orphan*/  ring_buffer_mutex; int /*<<< orphan*/  ring_buffer; } ;
struct vmbus_channel {struct hv_ring_buffer_info inbound; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (struct hv_ring_buffer_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct vmbus_channel *channel, char *buf)
{
	struct hv_ring_buffer_info *rbi = &channel->inbound;
	ssize_t ret;

	FUNC1(&rbi->ring_buffer_mutex);
	if (!rbi->ring_buffer) {
		FUNC2(&rbi->ring_buffer_mutex);
		return -EINVAL;
	}

	ret = FUNC3(buf, "%u\n", FUNC0(rbi));
	FUNC2(&rbi->ring_buffer_mutex);
	return ret;
}