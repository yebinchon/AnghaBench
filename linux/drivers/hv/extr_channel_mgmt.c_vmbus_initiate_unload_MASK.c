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
struct vmbus_channel_message_header {int /*<<< orphan*/  msgtype; } ;
struct TYPE_2__ {int /*<<< orphan*/  unload_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNELMSG_UNLOAD ; 
 scalar_t__ VERSION_WIN8_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_channel_message_header*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ vmbus_connection ; 
 int /*<<< orphan*/  FUNC2 (struct vmbus_channel_message_header*,int,int) ; 
 scalar_t__ vmbus_proto_version ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(bool crash)
{
	struct vmbus_channel_message_header hdr;

	/* Pre-Win2012R2 hosts don't support reconnect */
	if (vmbus_proto_version < VERSION_WIN8_1)
		return;

	FUNC0(&vmbus_connection.unload_event);
	FUNC1(&hdr, 0, sizeof(struct vmbus_channel_message_header));
	hdr.msgtype = CHANNELMSG_UNLOAD;
	FUNC2(&hdr, sizeof(struct vmbus_channel_message_header),
		       !crash);

	/*
	 * vmbus_initiate_unload() is also called on crash and the crash can be
	 * happening in an interrupt context, where scheduling is impossible.
	 */
	if (!crash)
		FUNC4(&vmbus_connection.unload_event);
	else
		FUNC3();
}