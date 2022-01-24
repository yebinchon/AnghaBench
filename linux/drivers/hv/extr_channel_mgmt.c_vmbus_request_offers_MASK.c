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
struct vmbus_channel_msginfo {scalar_t__ msg; } ;
struct vmbus_channel_message_header {int /*<<< orphan*/  msgtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNELMSG_REQUESTOFFERS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct vmbus_channel_msginfo*) ; 
 struct vmbus_channel_msginfo* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct vmbus_channel_message_header*,int,int) ; 

int FUNC5(void)
{
	struct vmbus_channel_message_header *msg;
	struct vmbus_channel_msginfo *msginfo;
	int ret;

	msginfo = FUNC1(sizeof(*msginfo) +
			  sizeof(struct vmbus_channel_message_header),
			  GFP_KERNEL);
	if (!msginfo)
		return -ENOMEM;

	msg = (struct vmbus_channel_message_header *)msginfo->msg;

	msg->msgtype = CHANNELMSG_REQUESTOFFERS;

	ret = FUNC4(msg, sizeof(struct vmbus_channel_message_header),
			     true);

	FUNC3(ret);

	if (ret != 0) {
		FUNC2("Unable to request offers - %d\n", ret);

		goto cleanup;
	}

cleanup:
	FUNC0(msginfo);

	return ret;
}