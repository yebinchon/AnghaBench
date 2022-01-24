#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct input_dev {int dummy; } ;
struct hid_usage {scalar_t__ hid; } ;
struct hid_field {TYPE_1__* hidinput; } ;
struct hid_device {int claimed; } ;
typedef  int /*<<< orphan*/  __s32 ;
struct TYPE_2__ {struct input_dev* input; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_KEY ; 
 int HID_CLAIMED_INPUT ; 
 scalar_t__ HID_GD_RFKILL_BTN ; 
 int /*<<< orphan*/  KEY_RFKILL ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 

__attribute__((used)) static int FUNC2(struct hid_device *hdev, struct hid_field *field,
		     struct hid_usage *usage, __s32 value)
{
	struct input_dev *input;

	if (!(hdev->claimed & HID_CLAIMED_INPUT) || !field->hidinput)
		return 0;

	input = field->hidinput->input;

	/*
	 * The ITE8595 always reports 0 as value for the rfkill button. Luckily
	 * it is the only button in its report, and it sends a report on
	 * release only, so receiving a report means the button was pressed.
	 */
	if (usage->hid == HID_GD_RFKILL_BTN) {
		FUNC0(input, EV_KEY, KEY_RFKILL, 1);
		FUNC1(input);
		FUNC0(input, EV_KEY, KEY_RFKILL, 0);
		FUNC1(input);
		return 1;
	}

	return 0;
}