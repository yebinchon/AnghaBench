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
struct vmpacket_descriptor {int offset8; int len8; int /*<<< orphan*/  trans_id; } ;
struct vmbus_channel {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (struct vmbus_channel*,struct vmpacket_descriptor*) ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_channel*) ; 
 struct vmpacket_descriptor* FUNC2 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC3 (void*,char const*,int) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct vmbus_channel *channel,
		       void *buffer, u32 buflen, u32 *buffer_actual_len,
		       u64 *requestid, bool raw)
{
	struct vmpacket_descriptor *desc;
	u32 packetlen, offset;

	if (FUNC4(buflen == 0))
		return -EINVAL;

	*buffer_actual_len = 0;
	*requestid = 0;

	/* Make sure there is something to read */
	desc = FUNC2(channel);
	if (desc == NULL) {
		/*
		 * No error is set when there is even no header, drivers are
		 * supposed to analyze buffer_actual_len.
		 */
		return 0;
	}

	offset = raw ? 0 : (desc->offset8 << 3);
	packetlen = (desc->len8 << 3) - offset;
	*buffer_actual_len = packetlen;
	*requestid = desc->trans_id;

	if (FUNC4(packetlen > buflen))
		return -ENOBUFS;

	/* since ring is double mapped, only one copy is necessary */
	FUNC3(buffer, (const char *)desc + offset, packetlen);

	/* Advance ring index to next packet descriptor */
	FUNC0(channel, desc);

	/* Notify host of update */
	FUNC1(channel);

	return 0;
}