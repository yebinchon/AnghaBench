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
struct hid_field {int flags; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
#define  HID_GD_RX 133 
#define  HID_GD_RY 132 
#define  HID_GD_RZ 131 
#define  HID_GD_X 130 
#define  HID_GD_Y 129 
#define  HID_GD_Z 128 
 int HID_MAIN_ITEM_RELATIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct hid_device *hdev, struct hid_input *hi,
			    struct hid_field *field, struct hid_usage *usage,
			    unsigned long **bit, int *max)
{
	switch (usage->hid) {
	/*
	 * revert to the old hid-input behavior where axes
	 * can be randomly assigned when hid->usage is reused.
	 */
	case HID_GD_X: case HID_GD_Y: case HID_GD_Z:
	case HID_GD_RX: case HID_GD_RY: case HID_GD_RZ:
		if (field->flags & HID_MAIN_ITEM_RELATIVE)
			FUNC1(usage->hid & 0xf);
		else
			FUNC0(usage->hid & 0xf);
		return 1;
	}

	return 0;
}