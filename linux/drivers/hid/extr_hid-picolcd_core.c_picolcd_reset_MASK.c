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
struct picolcd_data {int status; int /*<<< orphan*/  lock; } ;
struct hid_report {int maxfield; int /*<<< orphan*/ * field; } ;
struct hid_device {scalar_t__ product; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int PICOLCD_BOOTLOADER ; 
 int PICOLCD_FAILED ; 
 int /*<<< orphan*/  REPORT_RESET ; 
 scalar_t__ USB_DEVICE_ID_PICOLCD_BOOTLOADER ; 
 struct picolcd_data* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,struct hid_report*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct picolcd_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct picolcd_data*) ; 
 struct hid_report* FUNC6 (int /*<<< orphan*/ ,struct hid_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct picolcd_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct picolcd_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC11(struct hid_device *hdev)
{
	struct picolcd_data *data = FUNC0(hdev);
	struct hid_report *report = FUNC6(REPORT_RESET, hdev);
	unsigned long flags;
	int error;

	if (!data || !report || report->maxfield != 1)
		return -ENODEV;

	FUNC9(&data->lock, flags);
	if (hdev->product == USB_DEVICE_ID_PICOLCD_BOOTLOADER)
		data->status |= PICOLCD_BOOTLOADER;

	/* perform the reset */
	FUNC2(report->field[0], 0, 1);
	if (data->status & PICOLCD_FAILED) {
		FUNC10(&data->lock, flags);
		return -ENODEV;
	}
	FUNC1(hdev, report, HID_REQ_SET_REPORT);
	FUNC10(&data->lock, flags);

	error = FUNC3(hdev);
	if (error)
		return error;

	FUNC8(data);
	FUNC7(data);
	FUNC4(data);
	FUNC5(data);
	return 0;
}