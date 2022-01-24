#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct synth_kbd_protocol_response {int /*<<< orphan*/  proto_status; } ;
struct TYPE_4__ {void* version; } ;
struct TYPE_3__ {void* type; } ;
struct synth_kbd_protocol_request {TYPE_2__ version_requested; TYPE_1__ header; } ;
struct hv_kbd_dev {struct synth_kbd_protocol_response protocol_resp; int /*<<< orphan*/  wait_event; struct synth_kbd_protocol_request protocol_req; } ;
struct hv_device {int /*<<< orphan*/  device; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int ENODEV ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int PROTOCOL_ACCEPTED ; 
 int /*<<< orphan*/  SYNTH_KBD_PROTOCOL_REQUEST ; 
 int /*<<< orphan*/  SYNTH_KBD_VERSION ; 
 int /*<<< orphan*/  VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED ; 
 int /*<<< orphan*/  VM_PKT_DATA_INBAND ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct hv_kbd_dev* FUNC3 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct synth_kbd_protocol_request*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct synth_kbd_protocol_request*,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct hv_device *hv_dev)
{
	struct hv_kbd_dev *kbd_dev = FUNC3(hv_dev);
	struct synth_kbd_protocol_request *request;
	struct synth_kbd_protocol_response *response;
	u32 proto_status;
	int error;

	request = &kbd_dev->protocol_req;
	FUNC4(request, 0, sizeof(struct synth_kbd_protocol_request));
	request->header.type = FUNC0(SYNTH_KBD_PROTOCOL_REQUEST);
	request->version_requested.version = FUNC0(SYNTH_KBD_VERSION);

	error = FUNC5(hv_dev->channel, request,
				 sizeof(struct synth_kbd_protocol_request),
				 (unsigned long)request,
				 VM_PKT_DATA_INBAND,
				 VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED);
	if (error)
		return error;

	if (!FUNC6(&kbd_dev->wait_event, 10 * HZ))
		return -ETIMEDOUT;

	response = &kbd_dev->protocol_resp;
	proto_status = FUNC1(response->proto_status);
	if (!(proto_status & PROTOCOL_ACCEPTED)) {
		FUNC2(&hv_dev->device,
			"synth_kbd protocol request failed (version %d)\n",
		        SYNTH_KBD_VERSION);
		return -ENODEV;
	}

	return 0;
}