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
struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 unsigned long BELKIN_WKBD ; 
 int HID_UP_CONSUMER ; 
 int HID_USAGE ; 
 int HID_USAGE_PAGE ; 
 int /*<<< orphan*/  KEY_CAMERA ; 
 int /*<<< orphan*/  KEY_DOCUMENTS ; 
 int /*<<< orphan*/  KEY_SOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hid_device*) ; 

__attribute__((used)) static int FUNC2(struct hid_device *hdev, struct hid_input *hi,
		struct hid_field *field, struct hid_usage *usage,
		unsigned long **bit, int *max)
{
	unsigned long quirks = (unsigned long)FUNC1(hdev);

	if ((usage->hid & HID_USAGE_PAGE) != HID_UP_CONSUMER ||
			!(quirks & BELKIN_WKBD))
		return 0;

	switch (usage->hid & HID_USAGE) {
	case 0x03a: FUNC0(KEY_SOUND);		break;
	case 0x03b: FUNC0(KEY_CAMERA);		break;
	case 0x03c: FUNC0(KEY_DOCUMENTS);	break;
	default:
		return 0;
	}
	return 1;
}