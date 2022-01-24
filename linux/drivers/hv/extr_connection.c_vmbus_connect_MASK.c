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
struct vmbus_channel_msginfo {int dummy; } ;
struct vmbus_channel_initiate_contact {int dummy; } ;
typedef  int __u32 ;
struct TYPE_2__ {scalar_t__ conn_state; int /*<<< orphan*/ ** monitor_pages; int /*<<< orphan*/ * int_page; void* send_int_page; int /*<<< orphan*/ * recv_int_page; int /*<<< orphan*/  channel_mutex; int /*<<< orphan*/  chn_list; int /*<<< orphan*/  channelmsg_lock; int /*<<< orphan*/  chn_msg_list; void* handle_sub_chan_wq; void* handle_primary_chan_wq; void* work_queue; } ;

/* Variables and functions */
 scalar_t__ CONNECTED ; 
 scalar_t__ CONNECTING ; 
 scalar_t__ DISCONNECTED ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PAGE_SIZE ; 
 int VERSION_CURRENT ; 
 int VERSION_INVAL ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct vmbus_channel_msginfo*) ; 
 struct vmbus_channel_msginfo* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__ vmbus_connection ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int) ; 
 int FUNC11 (struct vmbus_channel_msginfo*,int) ; 
 int vmbus_proto_version ; 

int FUNC12(void)
{
	int ret = 0;
	struct vmbus_channel_msginfo *msginfo = NULL;
	__u32 version;

	/* Initialize the vmbus connection */
	vmbus_connection.conn_state = CONNECTING;
	vmbus_connection.work_queue = FUNC2("hv_vmbus_con");
	if (!vmbus_connection.work_queue) {
		ret = -ENOMEM;
		goto cleanup;
	}

	vmbus_connection.handle_primary_chan_wq =
		FUNC2("hv_pri_chan");
	if (!vmbus_connection.handle_primary_chan_wq) {
		ret = -ENOMEM;
		goto cleanup;
	}

	vmbus_connection.handle_sub_chan_wq =
		FUNC2("hv_sub_chan");
	if (!vmbus_connection.handle_sub_chan_wq) {
		ret = -ENOMEM;
		goto cleanup;
	}

	FUNC0(&vmbus_connection.chn_msg_list);
	FUNC8(&vmbus_connection.channelmsg_lock);

	FUNC0(&vmbus_connection.chn_list);
	FUNC5(&vmbus_connection.channel_mutex);

	/*
	 * Setup the vmbus event connection for channel interrupt
	 * abstraction stuff
	 */
	vmbus_connection.int_page =
	(void *)FUNC1(GFP_KERNEL|__GFP_ZERO, 0);
	if (vmbus_connection.int_page == NULL) {
		ret = -ENOMEM;
		goto cleanup;
	}

	vmbus_connection.recv_int_page = vmbus_connection.int_page;
	vmbus_connection.send_int_page =
		(void *)((unsigned long)vmbus_connection.int_page +
			(PAGE_SIZE >> 1));

	/*
	 * Setup the monitor notification facility. The 1st page for
	 * parent->child and the 2nd page for child->parent
	 */
	vmbus_connection.monitor_pages[0] = (void *)FUNC1((GFP_KERNEL|__GFP_ZERO), 0);
	vmbus_connection.monitor_pages[1] = (void *)FUNC1((GFP_KERNEL|__GFP_ZERO), 0);
	if ((vmbus_connection.monitor_pages[0] == NULL) ||
	    (vmbus_connection.monitor_pages[1] == NULL)) {
		ret = -ENOMEM;
		goto cleanup;
	}

	msginfo = FUNC4(sizeof(*msginfo) +
			  sizeof(struct vmbus_channel_initiate_contact),
			  GFP_KERNEL);
	if (msginfo == NULL) {
		ret = -ENOMEM;
		goto cleanup;
	}

	/*
	 * Negotiate a compatible VMBUS version number with the
	 * host. We start with the highest number we can support
	 * and work our way down until we negotiate a compatible
	 * version.
	 */

	version = VERSION_CURRENT;

	do {
		ret = FUNC11(msginfo, version);
		if (ret == -ETIMEDOUT)
			goto cleanup;

		if (vmbus_connection.conn_state == CONNECTED)
			break;

		version = FUNC10(version);
	} while (version != VERSION_INVAL);

	if (version == VERSION_INVAL)
		goto cleanup;

	vmbus_proto_version = version;
	FUNC7("Vmbus version:%d.%d\n",
		version >> 16, version & 0xFFFF);

	FUNC3(msginfo);
	return 0;

cleanup:
	FUNC6("Unable to connect to host\n");

	vmbus_connection.conn_state = DISCONNECTED;
	FUNC9();

	FUNC3(msginfo);

	return ret;
}