#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct input_dev {int /*<<< orphan*/  key; } ;
struct hid_usage {scalar_t__ type; scalar_t__ hat_min; scalar_t__ hat_max; int hat_dir; int code; int hid; size_t usage_index; } ;
struct hid_field {int logical_minimum; int logical_maximum; int flags; size_t maxusage; int* value; TYPE_1__* hidinput; } ;
struct hid_device {unsigned int quirks; } ;
typedef  int __s32 ;
struct TYPE_4__ {int x; int y; } ;
struct TYPE_3__ {struct input_dev* input; } ;

/* Variables and functions */
 int ABS_VOLUME ; 
 int BTN_TOOL_RUBBER ; 
 int BTN_TOUCH ; 
 scalar_t__ EV_ABS ; 
 scalar_t__ EV_KEY ; 
 scalar_t__ EV_MSC ; 
 scalar_t__ EV_PWR ; 
 scalar_t__ EV_REL ; 
 int HID_MAIN_ITEM_BUFFERED_BYTE ; 
 int HID_MAIN_ITEM_NULL_STATE ; 
 int HID_MAIN_ITEM_RELATIVE ; 
 int HID_MAIN_ITEM_VARIABLE ; 
 unsigned int HID_QUIRK_INVERT ; 
 unsigned int HID_QUIRK_NOTOUCH ; 
 int HID_UP_DIGITIZER ; 
 int HID_UP_PID ; 
 int KEY_VOLUMEDOWN ; 
 int KEY_VOLUMEUP ; 
 int MSC_SCAN ; 
 int REL_HWHEEL_HI_RES ; 
 int REL_WHEEL_HI_RES ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_2__* hid_hat_to_axis ; 
 int /*<<< orphan*/  FUNC3 (struct hid_usage*,struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

void FUNC8(struct hid_device *hid, struct hid_field *field, struct hid_usage *usage, __s32 value)
{
	struct input_dev *input;
	unsigned *quirks = &hid->quirks;

	if (!usage->type)
		return;

	if (usage->type == EV_PWR) {
		FUNC4(hid, value);
		return;
	}

	if (!field->hidinput)
		return;

	input = field->hidinput->input;

	if (usage->hat_min < usage->hat_max || usage->hat_dir) {
		int hat_dir = usage->hat_dir;
		if (!hat_dir)
			hat_dir = (value - usage->hat_min) * 8 / (usage->hat_max - usage->hat_min + 1) + 1;
		if (hat_dir < 0 || hat_dir > 8) hat_dir = 0;
		FUNC5(input, usage->type, usage->code    , hid_hat_to_axis[hat_dir].x);
		FUNC5(input, usage->type, usage->code + 1, hid_hat_to_axis[hat_dir].y);
		return;
	}

	if (usage->hid == (HID_UP_DIGITIZER | 0x003c)) { /* Invert */
		*quirks = value ? (*quirks | HID_QUIRK_INVERT) : (*quirks & ~HID_QUIRK_INVERT);
		return;
	}

	if (usage->hid == (HID_UP_DIGITIZER | 0x0032)) { /* InRange */
		if (value) {
			FUNC5(input, usage->type, (*quirks & HID_QUIRK_INVERT) ? BTN_TOOL_RUBBER : usage->code, 1);
			return;
		}
		FUNC5(input, usage->type, usage->code, 0);
		FUNC5(input, usage->type, BTN_TOOL_RUBBER, 0);
		return;
	}

	if (usage->hid == (HID_UP_DIGITIZER | 0x0030) && (*quirks & HID_QUIRK_NOTOUCH)) { /* Pressure */
		int a = field->logical_minimum;
		int b = field->logical_maximum;
		FUNC5(input, EV_KEY, BTN_TOUCH, value > a + ((b - a) >> 3));
	}

	if (usage->hid == (HID_UP_PID | 0x83UL)) { /* Simultaneous Effects Max */
		FUNC2("Maximum Effects - %d\n",value);
		return;
	}

	if (usage->hid == (HID_UP_PID | 0x7fUL)) {
		FUNC2("PID Pool Report\n");
		return;
	}

	if ((usage->type == EV_KEY) && (usage->code == 0)) /* Key 0 is "unassigned", not KEY_UNKNOWN */
		return;

	if ((usage->type == EV_REL) && (usage->code == REL_WHEEL_HI_RES ||
					usage->code == REL_HWHEEL_HI_RES)) {
		FUNC3(usage, input, value);
		return;
	}

	if ((usage->type == EV_ABS) && (field->flags & HID_MAIN_ITEM_RELATIVE) &&
			(usage->code == ABS_VOLUME)) {
		int count = FUNC0(value);
		int direction = value > 0 ? KEY_VOLUMEUP : KEY_VOLUMEDOWN;
		int i;

		for (i = 0; i < count; i++) {
			FUNC5(input, EV_KEY, direction, 1);
			FUNC6(input);
			FUNC5(input, EV_KEY, direction, 0);
			FUNC6(input);
		}
		return;
	}

	/*
	 * Ignore out-of-range values as per HID specification,
	 * section 5.10 and 6.2.25, when NULL state bit is present.
	 * When it's not, clamp the value to match Microsoft's input
	 * driver as mentioned in "Required HID usages for digitizers":
	 * https://msdn.microsoft.com/en-us/library/windows/hardware/dn672278(v=vs.85).asp
	 *
	 * The logical_minimum < logical_maximum check is done so that we
	 * don't unintentionally discard values sent by devices which
	 * don't specify logical min and max.
	 */
	if ((field->flags & HID_MAIN_ITEM_VARIABLE) &&
	    (field->logical_minimum < field->logical_maximum)) {
		if (field->flags & HID_MAIN_ITEM_NULL_STATE &&
		    (value < field->logical_minimum ||
		     value > field->logical_maximum)) {
			FUNC2("Ignoring out-of-range value %x\n", value);
			return;
		}
		value = FUNC1(value,
			      field->logical_minimum,
			      field->logical_maximum);
	}

	/*
	 * Ignore reports for absolute data if the data didn't change. This is
	 * not only an optimization but also fixes 'dead' key reports. Some
	 * RollOver implementations for localized keys (like BACKSLASH/PIPE; HID
	 * 0x31 and 0x32) report multiple keys, even though a localized keyboard
	 * can only have one of them physically available. The 'dead' keys
	 * report constant 0. As all map to the same keycode, they'd confuse
	 * the input layer. If we filter the 'dead' keys on the HID level, we
	 * skip the keycode translation and only forward real events.
	 */
	if (!(field->flags & (HID_MAIN_ITEM_RELATIVE |
	                      HID_MAIN_ITEM_BUFFERED_BYTE)) &&
			      (field->flags & HID_MAIN_ITEM_VARIABLE) &&
	    usage->usage_index < field->maxusage &&
	    value == field->value[usage->usage_index])
		return;

	/* report the usage code as scancode if the key status has changed */
	if (usage->type == EV_KEY &&
	    (!FUNC7(usage->code, input->key)) == value)
		FUNC5(input, EV_MSC, MSC_SCAN, usage->hid);

	FUNC5(input, usage->type, usage->code, value);

	if ((field->flags & HID_MAIN_ITEM_RELATIVE) &&
	    usage->type == EV_KEY && value) {
		FUNC6(input);
		FUNC5(input, usage->type, usage->code, 0);
	}
}