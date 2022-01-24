#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct vmbus_channel_msginfo {int /*<<< orphan*/  msglistentry; int /*<<< orphan*/  waitevent; scalar_t__ msg; struct vmbus_channel* waiting_channel; } ;
struct TYPE_4__ {int /*<<< orphan*/  msgtype; } ;
struct vmbus_channel_gpadl_teardown {int /*<<< orphan*/  gpadl; int /*<<< orphan*/  child_relid; TYPE_1__ header; } ;
struct TYPE_5__ {int /*<<< orphan*/  child_relid; } ;
struct vmbus_channel {scalar_t__ rescind; TYPE_2__ offermsg; } ;
struct TYPE_6__ {int /*<<< orphan*/  channelmsg_lock; int /*<<< orphan*/  chn_msg_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNELMSG_GPADL_TEARDOWN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_channel_msginfo*) ; 
 struct vmbus_channel_msginfo* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct vmbus_channel_gpadl_teardown*,int) ; 
 TYPE_3__ vmbus_connection ; 
 int FUNC8 (struct vmbus_channel_gpadl_teardown*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct vmbus_channel *channel, u32 gpadl_handle)
{
	struct vmbus_channel_gpadl_teardown *msg;
	struct vmbus_channel_msginfo *info;
	unsigned long flags;
	int ret;

	info = FUNC2(sizeof(*info) +
		       sizeof(struct vmbus_channel_gpadl_teardown), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	FUNC0(&info->waitevent);
	info->waiting_channel = channel;

	msg = (struct vmbus_channel_gpadl_teardown *)info->msg;

	msg->header.msgtype = CHANNELMSG_GPADL_TEARDOWN;
	msg->child_relid = channel->offermsg.child_relid;
	msg->gpadl = gpadl_handle;

	FUNC5(&vmbus_connection.channelmsg_lock, flags);
	FUNC3(&info->msglistentry,
		      &vmbus_connection.chn_msg_list);
	FUNC6(&vmbus_connection.channelmsg_lock, flags);

	if (channel->rescind)
		goto post_msg_err;

	ret = FUNC8(msg, sizeof(struct vmbus_channel_gpadl_teardown),
			     true);

	FUNC7(msg, ret);

	if (ret)
		goto post_msg_err;

	FUNC9(&info->waitevent);

post_msg_err:
	/*
	 * If the channel has been rescinded;
	 * we will be awakened by the rescind
	 * handler; set the error code to zero so we don't leak memory.
	 */
	if (channel->rescind)
		ret = 0;

	FUNC5(&vmbus_connection.channelmsg_lock, flags);
	FUNC4(&info->msglistentry);
	FUNC6(&vmbus_connection.channelmsg_lock, flags);

	FUNC1(info);
	return ret;
}