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
typedef  int /*<<< orphan*/  workitem ;
struct hidpp_event {int* params; int /*<<< orphan*/  device_index; } ;
struct hid_device {int dummy; } ;
struct dj_workitem {scalar_t__ type; int /*<<< orphan*/  reports_supported; int /*<<< orphan*/  device_index; } ;
struct dj_receiver_dev {int /*<<< orphan*/  work; int /*<<< orphan*/  notif_fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIDPP ; 
 int HIDPP_MANUFACTURER_MASK ; 
 size_t HIDPP_PARAM_DEVICE_INFO ; 
 size_t HIDPP_PARAM_PROTO_TYPE ; 
 int /*<<< orphan*/  STD_KEYBOARD ; 
 scalar_t__ WORKITEM_TYPE_EMPTY ; 
 struct dj_receiver_dev* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,char*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct dj_workitem*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,struct hidpp_event*,struct dj_workitem*) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*,struct hidpp_event*,struct dj_workitem*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct hid_device *hdev,
					struct hidpp_event *hidpp_report)
{
	/* We are called from atomic context (tasklet && djrcv->lock held) */
	struct dj_receiver_dev *djrcv_dev = FUNC0(hdev);
	const char *device_type = "UNKNOWN";
	struct dj_workitem workitem = {
		.type = WORKITEM_TYPE_EMPTY,
		.device_index = hidpp_report->device_index,
	};

	switch (hidpp_report->params[HIDPP_PARAM_PROTO_TYPE]) {
	case 0x01:
		device_type = "Bluetooth";
		/* Bluetooth connect packet contents is the same as (e)QUAD */
		FUNC5(hdev, hidpp_report, &workitem);
		if (!(hidpp_report->params[HIDPP_PARAM_DEVICE_INFO] &
						HIDPP_MANUFACTURER_MASK)) {
			FUNC1(hdev, "Non Logitech device connected on slot %d\n",
				 hidpp_report->device_index);
			workitem.reports_supported &= ~HIDPP;
		}
		break;
	case 0x02:
		device_type = "27 Mhz";
		FUNC4(hdev, hidpp_report, &workitem);
		break;
	case 0x03:
		device_type = "QUAD or eQUAD";
		FUNC5(hdev, hidpp_report, &workitem);
		break;
	case 0x04:
		device_type = "eQUAD step 4 DJ";
		FUNC5(hdev, hidpp_report, &workitem);
		break;
	case 0x05:
		device_type = "DFU Lite";
		break;
	case 0x06:
		device_type = "eQUAD step 4 Lite";
		FUNC5(hdev, hidpp_report, &workitem);
		break;
	case 0x07:
		device_type = "eQUAD step 4 Gaming";
		FUNC5(hdev, hidpp_report, &workitem);
		break;
	case 0x08:
		device_type = "eQUAD step 4 for gamepads";
		break;
	case 0x0a:
		device_type = "eQUAD nano Lite";
		FUNC5(hdev, hidpp_report, &workitem);
		break;
	case 0x0c:
		device_type = "eQUAD Lightspeed 1";
		FUNC5(hdev, hidpp_report, &workitem);
		workitem.reports_supported |= STD_KEYBOARD;
		break;
	case 0x0d:
		device_type = "eQUAD Lightspeed 1_1";
		FUNC5(hdev, hidpp_report, &workitem);
		workitem.reports_supported |= STD_KEYBOARD;
		break;
	}

	if (workitem.type == WORKITEM_TYPE_EMPTY) {
		FUNC2(hdev,
			 "unusable device of type %s (0x%02x) connected on slot %d",
			 device_type,
			 hidpp_report->params[HIDPP_PARAM_PROTO_TYPE],
			 hidpp_report->device_index);
		return;
	}

	FUNC1(hdev, "device of type %s (0x%02x) connected on slot %d",
		 device_type, hidpp_report->params[HIDPP_PARAM_PROTO_TYPE],
		 hidpp_report->device_index);

	FUNC3(&djrcv_dev->notif_fifo, &workitem, sizeof(workitem));
	FUNC6(&djrcv_dev->work);
}