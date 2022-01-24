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
struct hid_device {int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_CONNECT_DEFAULT ; 
 int /*<<< orphan*/  HID_QUIRK_MULTI_INPUT ; 
 int FUNC0 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hid_device*) ; 

__attribute__((used)) static int FUNC2(struct hid_device *hdev,
			const struct hid_device_id *id)
{

	int ret;

	/* Has no effect on the mouse device */
	hdev->quirks |= HID_QUIRK_MULTI_INPUT;

	ret = FUNC1(hdev);
	if (ret)
		return ret;

	ret = FUNC0(hdev, HID_CONNECT_DEFAULT);
	if (ret)
		return ret;

	return 0;
}