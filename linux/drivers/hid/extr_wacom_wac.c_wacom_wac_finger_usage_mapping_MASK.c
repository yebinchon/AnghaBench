#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cc_value_index; int /*<<< orphan*/  cc_index; int /*<<< orphan*/  cc_report; } ;
struct TYPE_4__ {unsigned int touch_max; } ;
struct wacom_wac {TYPE_3__ hid_data; TYPE_1__ features; struct input_dev* touch_input; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct input_dev {int dummy; } ;
struct hid_usage {int /*<<< orphan*/  usage_index; int /*<<< orphan*/  hid; } ;
struct hid_field {unsigned int logical_maximum; unsigned int logical_minimum; int /*<<< orphan*/  index; TYPE_2__* report; } ;
struct hid_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_ORIENTATION ; 
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MINOR ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
#define  HID_DG_CONTACTCOUNT 134 
#define  HID_DG_CONTACTID 133 
#define  HID_DG_HEIGHT 132 
#define  HID_DG_TIPSWITCH 131 
#define  HID_DG_WIDTH 130 
#define  HID_GD_X 129 
#define  HID_GD_Y 128 
 struct wacom* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,struct hid_usage*,struct hid_field*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct hid_device *hdev,
		struct hid_field *field, struct hid_usage *usage)
{
	struct wacom *wacom = FUNC0(hdev);
	struct wacom_wac *wacom_wac = &wacom->wacom_wac;
	struct input_dev *input = wacom_wac->touch_input;
	unsigned touch_max = wacom_wac->features.touch_max;
	unsigned equivalent_usage = FUNC2(usage->hid);

	switch (equivalent_usage) {
	case HID_GD_X:
		if (touch_max == 1)
			FUNC3(input, usage, field, EV_ABS, ABS_X, 4);
		else
			FUNC3(input, usage, field, EV_ABS,
					ABS_MT_POSITION_X, 4);
		break;
	case HID_GD_Y:
		if (touch_max == 1)
			FUNC3(input, usage, field, EV_ABS, ABS_Y, 4);
		else
			FUNC3(input, usage, field, EV_ABS,
					ABS_MT_POSITION_Y, 4);
		break;
	case HID_DG_WIDTH:
	case HID_DG_HEIGHT:
		FUNC3(input, usage, field, EV_ABS, ABS_MT_TOUCH_MAJOR, 0);
		FUNC3(input, usage, field, EV_ABS, ABS_MT_TOUCH_MINOR, 0);
		FUNC1(input, ABS_MT_ORIENTATION, 0, 1, 0, 0);
		break;
	case HID_DG_TIPSWITCH:
		FUNC3(input, usage, field, EV_KEY, BTN_TOUCH, 0);
		break;
	case HID_DG_CONTACTCOUNT:
		wacom_wac->hid_data.cc_report = field->report->id;
		wacom_wac->hid_data.cc_index = field->index;
		wacom_wac->hid_data.cc_value_index = usage->usage_index;
		break;
	case HID_DG_CONTACTID:
		if ((field->logical_maximum - field->logical_minimum) < touch_max) {
			/*
			 * The HID descriptor for G11 sensors leaves logical
			 * maximum set to '1' despite it being a multitouch
			 * device. Override to a sensible number.
			 */
			field->logical_maximum = 255;
		}
		break;
	}
}