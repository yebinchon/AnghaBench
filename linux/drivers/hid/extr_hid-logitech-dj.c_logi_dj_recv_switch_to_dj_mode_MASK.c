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
typedef  int u8 ;
struct hid_device {int dummy; } ;
struct dj_report {int device_index; int* report_params; int /*<<< orphan*/  report_type; int /*<<< orphan*/  report_id; } ;
struct dj_receiver_dev {scalar_t__ type; struct hid_device* hidpp; } ;

/* Variables and functions */
 size_t CMD_SWITCH_PARAM_DEVBITFIELD ; 
 size_t CMD_SWITCH_PARAM_TIMEOUT_SECONDS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HIDPP_REPORT_SHORT_LENGTH ; 
 int /*<<< orphan*/  HID_OUTPUT_REPORT ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int /*<<< orphan*/  REPORT_ID_DJ_SHORT ; 
 int REPORT_ID_HIDPP_SHORT ; 
 int /*<<< orphan*/  REPORT_TYPE_CMD_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dj_report*) ; 
 struct dj_report* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dj_receiver_dev*,struct dj_report*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ recvr_type_dj ; 

__attribute__((used)) static int FUNC6(struct dj_receiver_dev *djrcv_dev,
					  unsigned timeout)
{
	struct hid_device *hdev = djrcv_dev->hidpp;
	struct dj_report *dj_report;
	u8 *buf;
	int retval = 0;

	dj_report = FUNC2(sizeof(struct dj_report), GFP_KERNEL);
	if (!dj_report)
		return -ENOMEM;

	if (djrcv_dev->type == recvr_type_dj) {
		dj_report->report_id = REPORT_ID_DJ_SHORT;
		dj_report->device_index = 0xFF;
		dj_report->report_type = REPORT_TYPE_CMD_SWITCH;
		dj_report->report_params[CMD_SWITCH_PARAM_DEVBITFIELD] = 0x3F;
		dj_report->report_params[CMD_SWITCH_PARAM_TIMEOUT_SECONDS] =
								(u8)timeout;

		retval = FUNC3(djrcv_dev, dj_report);

		/*
		 * Ugly sleep to work around a USB 3.0 bug when the receiver is
		 * still processing the "switch-to-dj" command while we send an
		 * other command.
		 * 50 msec should gives enough time to the receiver to be ready.
		 */
		FUNC5(50);
	}

	/*
	 * Magical bits to set up hidpp notifications when the dj devices
	 * are connected/disconnected.
	 *
	 * We can reuse dj_report because HIDPP_REPORT_SHORT_LENGTH is smaller
	 * than DJREPORT_SHORT_LENGTH.
	 */
	buf = (u8 *)dj_report;

	FUNC4(buf, 0, HIDPP_REPORT_SHORT_LENGTH);

	buf[0] = REPORT_ID_HIDPP_SHORT;
	buf[1] = 0xFF;
	buf[2] = 0x80;
	buf[3] = 0x00;
	buf[4] = 0x00;
	buf[5] = 0x09;
	buf[6] = 0x00;

	FUNC0(hdev, REPORT_ID_HIDPP_SHORT, buf,
			HIDPP_REPORT_SHORT_LENGTH, HID_OUTPUT_REPORT,
			HID_REQ_SET_REPORT);

	FUNC1(dj_report);
	return retval;
}