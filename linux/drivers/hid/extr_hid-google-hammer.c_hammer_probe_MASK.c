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
struct hid_device_id {int dummy; } ;
struct hid_device {scalar_t__ product; int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_CONNECT_DEFAULT ; 
 int /*<<< orphan*/  HID_QUIRK_ALWAYS_POLL ; 
 scalar_t__ USB_DEVICE_ID_GOOGLE_WHISKERS ; 
 scalar_t__ FUNC0 (struct hid_device*) ; 
 scalar_t__ FUNC1 (struct hid_device*) ; 
 int FUNC2 (struct hid_device*) ; 
 int FUNC3 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*,char*,int) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hdev,
			const struct hid_device_id *id)
{
	int error;

	/*
	 * We always want to poll for, and handle tablet mode events from
	 * Whiskers, even when nobody has opened the input device. This also
	 * prevents the hid core from dropping early tablet mode events from
	 * the device.
	 */
	if (hdev->product == USB_DEVICE_ID_GOOGLE_WHISKERS &&
			FUNC1(hdev))
		hdev->quirks |= HID_QUIRK_ALWAYS_POLL;

	error = FUNC4(hdev);
	if (error)
		return error;

	error = FUNC3(hdev, HID_CONNECT_DEFAULT);
	if (error)
		return error;

	if (FUNC0(hdev)) {
		error = FUNC2(hdev);
		if (error)
			FUNC5(hdev,
				"Failed to register keyboard backlight: %d\n",
				error);
	}

	return 0;
}