#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_6__ {int /*<<< orphan*/  msg_conn_id; scalar_t__ version_supported; } ;
struct TYPE_7__ {TYPE_2__ version_response; } ;
struct vmbus_channel_msginfo {TYPE_3__ response; int /*<<< orphan*/  msglistentry; int /*<<< orphan*/  waitevent; scalar_t__ msg; } ;
struct TYPE_5__ {int /*<<< orphan*/  msgtype; } ;
struct vmbus_channel_initiate_contact {scalar_t__ target_vcpu; void* monitor_page2; void* monitor_page1; void* interrupt_page; int /*<<< orphan*/  msg_sint; scalar_t__ vmbus_version_requested; TYPE_1__ header; } ;
struct TYPE_8__ {unsigned int connect_cpu; int /*<<< orphan*/  msg_conn_id; int /*<<< orphan*/  conn_state; int /*<<< orphan*/  channelmsg_lock; int /*<<< orphan*/  chn_msg_list; int /*<<< orphan*/ * monitor_pages; int /*<<< orphan*/  int_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNELMSG_INITIATE_CONTACT ; 
 int /*<<< orphan*/  CONNECTED ; 
 int ECONNREFUSED ; 
 scalar_t__ VERSION_WIN10_V5 ; 
 scalar_t__ VERSION_WIN8_1 ; 
 int /*<<< orphan*/  VMBUS_MESSAGE_CONNECTION_ID ; 
 int /*<<< orphan*/  VMBUS_MESSAGE_CONNECTION_ID_4 ; 
 int /*<<< orphan*/  VMBUS_MESSAGE_SINT ; 
 unsigned int FUNC0 () ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vmbus_channel_initiate_contact*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct vmbus_channel_initiate_contact*,int) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_4__ vmbus_connection ; 
 int FUNC11 (struct vmbus_channel_initiate_contact*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct vmbus_channel_msginfo *msginfo, u32 version)
{
	int ret = 0;
	unsigned int cur_cpu;
	struct vmbus_channel_initiate_contact *msg;
	unsigned long flags;

	FUNC2(&msginfo->waitevent);

	msg = (struct vmbus_channel_initiate_contact *)msginfo->msg;

	FUNC5(msg, 0, sizeof(*msg));
	msg->header.msgtype = CHANNELMSG_INITIATE_CONTACT;
	msg->vmbus_version_requested = version;

	/*
	 * VMBus protocol 5.0 (VERSION_WIN10_V5) requires that we must use
	 * VMBUS_MESSAGE_CONNECTION_ID_4 for the Initiate Contact Message,
	 * and for subsequent messages, we must use the Message Connection ID
	 * field in the host-returned Version Response Message. And, with
	 * VERSION_WIN10_V5, we don't use msg->interrupt_page, but we tell
	 * the host explicitly that we still use VMBUS_MESSAGE_SINT(2) for
	 * compatibility.
	 *
	 * On old hosts, we should always use VMBUS_MESSAGE_CONNECTION_ID (1).
	 */
	if (version >= VERSION_WIN10_V5) {
		msg->msg_sint = VMBUS_MESSAGE_SINT;
		vmbus_connection.msg_conn_id = VMBUS_MESSAGE_CONNECTION_ID_4;
	} else {
		msg->interrupt_page = FUNC10(vmbus_connection.int_page);
		vmbus_connection.msg_conn_id = VMBUS_MESSAGE_CONNECTION_ID;
	}

	msg->monitor_page1 = FUNC10(vmbus_connection.monitor_pages[0]);
	msg->monitor_page2 = FUNC10(vmbus_connection.monitor_pages[1]);
	/*
	 * We want all channel messages to be delivered on CPU 0.
	 * This has been the behavior pre-win8. This is not
	 * perf issue and having all channel messages delivered on CPU 0
	 * would be ok.
	 * For post win8 hosts, we support receiving channel messagges on
	 * all the CPUs. This is needed for kexec to work correctly where
	 * the CPU attempting to connect may not be CPU 0.
	 */
	if (version >= VERSION_WIN8_1) {
		cur_cpu = FUNC0();
		msg->target_vcpu = FUNC1(cur_cpu);
		vmbus_connection.connect_cpu = cur_cpu;
		FUNC6();
	} else {
		msg->target_vcpu = 0;
		vmbus_connection.connect_cpu = 0;
	}

	/*
	 * Add to list before we send the request since we may
	 * receive the response before returning from this routine
	 */
	FUNC7(&vmbus_connection.channelmsg_lock, flags);
	FUNC3(&msginfo->msglistentry,
		      &vmbus_connection.chn_msg_list);

	FUNC8(&vmbus_connection.channelmsg_lock, flags);

	ret = FUNC11(msg,
			     sizeof(struct vmbus_channel_initiate_contact),
			     true);

	FUNC9(msg, ret);

	if (ret != 0) {
		FUNC7(&vmbus_connection.channelmsg_lock, flags);
		FUNC4(&msginfo->msglistentry);
		FUNC8(&vmbus_connection.channelmsg_lock,
					flags);
		return ret;
	}

	/* Wait for the connection response */
	FUNC12(&msginfo->waitevent);

	FUNC7(&vmbus_connection.channelmsg_lock, flags);
	FUNC4(&msginfo->msglistentry);
	FUNC8(&vmbus_connection.channelmsg_lock, flags);

	/* Check if successful */
	if (msginfo->response.version_response.version_supported) {
		vmbus_connection.conn_state = CONNECTED;

		if (version >= VERSION_WIN10_V5)
			vmbus_connection.msg_conn_id =
				msginfo->response.version_response.msg_conn_id;
	} else {
		return -ECONNREFUSED;
	}

	return ret;
}