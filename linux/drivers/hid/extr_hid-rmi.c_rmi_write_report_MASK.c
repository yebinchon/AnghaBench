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
typedef  int /*<<< orphan*/  u8 ;
struct rmi_data {int device_flags; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_OUTPUT_REPORT ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int RMI_DEVICE_OUTPUT_SET_REPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct rmi_data* FUNC1 (struct hid_device*) ; 
 int FUNC2 (struct hid_device*,void*,int) ; 
 int FUNC3 (struct hid_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hid_device *hdev, u8 *report, int len)
{
	struct rmi_data *data = FUNC1(hdev);
	int ret;

	if (data->device_flags & RMI_DEVICE_OUTPUT_SET_REPORT) {
		/*
		 * Talk to device by using SET_REPORT requests instead.
		 */
		ret = FUNC3(hdev, report[0], report,
				len, HID_OUTPUT_REPORT, HID_REQ_SET_REPORT);
	} else {
		ret = FUNC2(hdev, (void *)report, len);
	}

	if (ret < 0) {
		FUNC0(&hdev->dev, "failed to write hid report (%d)\n", ret);
		return ret;
	}

	return ret;
}