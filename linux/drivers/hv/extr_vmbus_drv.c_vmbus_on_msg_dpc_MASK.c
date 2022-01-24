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
typedef  scalar_t__ u32 ;
struct vmbus_channel_message_table_entry {scalar_t__ handler_type; int /*<<< orphan*/  (* message_handler ) (struct vmbus_channel_message_header*) ;} ;
struct vmbus_channel_message_header {size_t msgtype; } ;
struct onmessage_work_context {int /*<<< orphan*/  work; int /*<<< orphan*/  msg; } ;
struct hv_per_cpu_context {void* synic_message_page; } ;
struct TYPE_5__ {scalar_t__ payload; } ;
struct TYPE_4__ {scalar_t__ message_type; } ;
struct hv_message {TYPE_2__ u; TYPE_1__ header; } ;
struct TYPE_6__ {int /*<<< orphan*/  work_queue; int /*<<< orphan*/  connect_cpu; int /*<<< orphan*/  offer_in_progress; } ;

/* Variables and functions */
 size_t CHANNELMSG_COUNT ; 
#define  CHANNELMSG_OFFERCHANNEL 129 
#define  CHANNELMSG_RESCIND_CHANNELOFFER 128 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ HVMSG_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int VMBUS_MESSAGE_SINT ; 
 scalar_t__ VMHT_BLOCKING ; 
 int /*<<< orphan*/  FUNC1 (int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vmbus_channel_message_table_entry* channel_message_table ; 
 struct onmessage_work_context* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct hv_message*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vmbus_channel_message_header*) ; 
 int /*<<< orphan*/  FUNC9 (struct vmbus_channel_message_header*) ; 
 TYPE_3__ vmbus_connection ; 
 int /*<<< orphan*/  vmbus_onmessage_work ; 
 int /*<<< orphan*/  FUNC10 (struct hv_message*,scalar_t__) ; 

void FUNC11(unsigned long data)
{
	struct hv_per_cpu_context *hv_cpu = (void *)data;
	void *page_addr = hv_cpu->synic_message_page;
	struct hv_message *msg = (struct hv_message *)page_addr +
				  VMBUS_MESSAGE_SINT;
	struct vmbus_channel_message_header *hdr;
	const struct vmbus_channel_message_table_entry *entry;
	struct onmessage_work_context *ctx;
	u32 message_type = msg->header.message_type;

	if (message_type == HVMSG_NONE)
		/* no msg */
		return;

	hdr = (struct vmbus_channel_message_header *)msg->u.payload;

	FUNC9(hdr);

	if (hdr->msgtype >= CHANNELMSG_COUNT) {
		FUNC1(1, "unknown msgtype=%d\n", hdr->msgtype);
		goto msg_handled;
	}

	entry = &channel_message_table[hdr->msgtype];
	if (entry->handler_type	== VMHT_BLOCKING) {
		ctx = FUNC3(sizeof(*ctx), GFP_ATOMIC);
		if (ctx == NULL)
			return;

		FUNC0(&ctx->work, vmbus_onmessage_work);
		FUNC4(&ctx->msg, msg, sizeof(*msg));

		/*
		 * The host can generate a rescind message while we
		 * may still be handling the original offer. We deal with
		 * this condition by ensuring the processing is done on the
		 * same CPU.
		 */
		switch (hdr->msgtype) {
		case CHANNELMSG_RESCIND_CHANNELOFFER:
			/*
			 * If we are handling the rescind message;
			 * schedule the work on the global work queue.
			 */
			FUNC7(vmbus_connection.connect_cpu,
					 &ctx->work);
			break;

		case CHANNELMSG_OFFERCHANNEL:
			FUNC2(&vmbus_connection.offer_in_progress);
			FUNC6(vmbus_connection.connect_cpu,
				      vmbus_connection.work_queue,
				      &ctx->work);
			break;

		default:
			FUNC5(vmbus_connection.work_queue, &ctx->work);
		}
	} else
		entry->message_handler(hdr);

msg_handled:
	FUNC10(msg, message_type);
}