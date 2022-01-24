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
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_CONNECT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*) ; 
 int FUNC1 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*) ; 
 int FUNC3 (struct hid_device*) ; 
 int FUNC4 (struct hid_device*) ; 

__attribute__((used)) static int FUNC5(struct hid_device *hdev,
		const struct hid_device_id *id)
{
	int retval;

	retval = FUNC3(hdev);
	if (retval) {
		FUNC0(hdev, "parse failed\n");
		goto exit;
	}

	retval = FUNC1(hdev, HID_CONNECT_DEFAULT);
	if (retval) {
		FUNC0(hdev, "hw start failed\n");
		goto exit;
	}

	retval = FUNC4(hdev);
	if (retval) {
		FUNC0(hdev, "couldn't install mouse\n");
		goto exit_stop;
	}

	return 0;

exit_stop:
	FUNC2(hdev);
exit:
	return retval;
}