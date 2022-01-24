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
struct mt_report_data {scalar_t__ is_mt_collection; struct mt_application* application; } ;
struct TYPE_3__ {int /*<<< orphan*/  export_all_inputs; } ;
struct mt_device {TYPE_1__ mtclass; } ;
struct mt_application {int quirks; } ;
struct hid_usage {int hid; } ;
struct hid_input {scalar_t__ application; TYPE_2__* input; } ;
struct hid_field {scalar_t__ application; int flags; scalar_t__ physical; int /*<<< orphan*/  report; } ;
struct hid_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  evbit; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_REP ; 
 scalar_t__ HID_CP_CONSUMER_CONTROL ; 
 scalar_t__ HID_DG_PEN ; 
 scalar_t__ HID_DG_STYLUS ; 
 scalar_t__ HID_DG_TOUCHPAD ; 
 scalar_t__ HID_DG_TOUCHSCREEN ; 
 scalar_t__ HID_GD_KEYBOARD ; 
 scalar_t__ HID_GD_SYSTEM_CONTROL ; 
 scalar_t__ HID_GD_SYSTEM_MULTIAXIS ; 
 scalar_t__ HID_GD_WIRELESS_RADIO_CTLS ; 
 int HID_MAIN_ITEM_VARIABLE ; 
 int HID_UP_CUSTOM ; 
 int HID_USAGE ; 
 int HID_USAGE_PAGE ; 
 scalar_t__ HID_VD_ASUS_CUSTOM_MEDIA_KEYS ; 
 int /*<<< orphan*/  KEY_BRIGHTNESSDOWN ; 
 int /*<<< orphan*/  KEY_BRIGHTNESSUP ; 
 int /*<<< orphan*/  KEY_DISPLAY_OFF ; 
 int /*<<< orphan*/  KEY_F21 ; 
 int /*<<< orphan*/  KEY_SLEEP ; 
 int MT_QUIRK_ASUS_CUSTOM_UP ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*) ; 
 struct mt_device* FUNC1 (struct hid_device*) ; 
 struct mt_report_data* FUNC2 (struct mt_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hid_device*,struct hid_input*,struct hid_field*,struct hid_usage*,unsigned long**,int*,struct mt_application*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hdev, struct hid_input *hi,
		struct hid_field *field, struct hid_usage *usage,
		unsigned long **bit, int *max)
{
	struct mt_device *td = FUNC1(hdev);
	struct mt_application *application;
	struct mt_report_data *rdata;

	rdata = FUNC2(td, field->report);
	if (!rdata) {
		FUNC0(hdev, "failed to allocate data for report\n");
		return 0;
	}

	application = rdata->application;

	/*
	 * If mtclass.export_all_inputs is not set, only map fields from
	 * TouchScreen or TouchPad collections. We need to ignore fields
	 * that belong to other collections such as Mouse that might have
	 * the same GenericDesktop usages.
	 */
	if (!td->mtclass.export_all_inputs &&
	    field->application != HID_DG_TOUCHSCREEN &&
	    field->application != HID_DG_PEN &&
	    field->application != HID_DG_TOUCHPAD &&
	    field->application != HID_GD_KEYBOARD &&
	    field->application != HID_GD_SYSTEM_CONTROL &&
	    field->application != HID_CP_CONSUMER_CONTROL &&
	    field->application != HID_GD_WIRELESS_RADIO_CTLS &&
	    field->application != HID_GD_SYSTEM_MULTIAXIS &&
	    !(field->application == HID_VD_ASUS_CUSTOM_MEDIA_KEYS &&
	      application->quirks & MT_QUIRK_ASUS_CUSTOM_UP))
		return -1;

	/*
	 * Some Asus keyboard+touchpad devices have the hotkeys defined in the
	 * touchpad report descriptor. We need to treat these as an array to
	 * map usages to input keys.
	 */
	if (field->application == HID_VD_ASUS_CUSTOM_MEDIA_KEYS &&
	    application->quirks & MT_QUIRK_ASUS_CUSTOM_UP &&
	    (usage->hid & HID_USAGE_PAGE) == HID_UP_CUSTOM) {
		FUNC5(EV_REP, hi->input->evbit);
		if (field->flags & HID_MAIN_ITEM_VARIABLE)
			field->flags &= ~HID_MAIN_ITEM_VARIABLE;
		switch (usage->hid & HID_USAGE) {
		case 0x10: FUNC3(KEY_BRIGHTNESSDOWN);	break;
		case 0x20: FUNC3(KEY_BRIGHTNESSUP);		break;
		case 0x35: FUNC3(KEY_DISPLAY_OFF);		break;
		case 0x6b: FUNC3(KEY_F21);			break;
		case 0x6c: FUNC3(KEY_SLEEP);			break;
		default:
			return -1;
		}
		return 1;
	}

	if (rdata->is_mt_collection)
		return FUNC4(hdev, hi, field, usage, bit, max,
					      application);

	/*
	 * some egalax touchscreens have "application == DG_TOUCHSCREEN"
	 * for the stylus. Overwrite the hid_input application
	 */
	if (field->physical == HID_DG_STYLUS)
		hi->application = HID_DG_STYLUS;

	/* let hid-core decide for the others */
	return 0;
}