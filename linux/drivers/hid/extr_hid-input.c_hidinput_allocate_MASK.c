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
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {char const* name; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  uniq; int /*<<< orphan*/  phys; int /*<<< orphan*/  getkeycode; int /*<<< orphan*/  setkeycode; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  event; } ;
struct hid_input {char const* name; unsigned int application; int /*<<< orphan*/  reports; int /*<<< orphan*/  list; struct input_dev* input; } ;
struct hid_device {int quirks; int maxapplication; char const* name; int /*<<< orphan*/  inputs; int /*<<< orphan*/  dev; int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bus; int /*<<< orphan*/  uniq; int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  HID_CP_CONSUMER_CONTROL 137 
#define  HID_DG_STYLUS 136 
#define  HID_DG_TOUCHPAD 135 
#define  HID_DG_TOUCHSCREEN 134 
#define  HID_GD_KEYBOARD 133 
#define  HID_GD_KEYPAD 132 
#define  HID_GD_MOUSE 131 
#define  HID_GD_SYSTEM_CONTROL 130 
#define  HID_GD_SYSTEM_MULTIAXIS 129 
#define  HID_GD_WIRELESS_RADIO_CTLS 128 
 int HID_QUIRK_INPUT_PER_APP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  hidinput_close ; 
 int /*<<< orphan*/  hidinput_getkeycode ; 
 int /*<<< orphan*/  hidinput_input_event ; 
 int /*<<< orphan*/  hidinput_open ; 
 int /*<<< orphan*/  hidinput_setkeycode ; 
 struct input_dev* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,struct hid_device*) ; 
 char const* FUNC5 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct hid_input*) ; 
 struct hid_input* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*,char const*) ; 
 size_t FUNC10 (char const*) ; 

__attribute__((used)) static struct hid_input *FUNC11(struct hid_device *hid,
					   unsigned int application)
{
	struct hid_input *hidinput = FUNC7(sizeof(*hidinput), GFP_KERNEL);
	struct input_dev *input_dev = FUNC2();
	const char *suffix = NULL;
	size_t suffix_len, name_len;

	if (!hidinput || !input_dev)
		goto fail;

	if ((hid->quirks & HID_QUIRK_INPUT_PER_APP) &&
	    hid->maxapplication > 1) {
		switch (application) {
		case HID_GD_KEYBOARD:
			suffix = "Keyboard";
			break;
		case HID_GD_KEYPAD:
			suffix = "Keypad";
			break;
		case HID_GD_MOUSE:
			suffix = "Mouse";
			break;
		case HID_DG_STYLUS:
			suffix = "Pen";
			break;
		case HID_DG_TOUCHSCREEN:
			suffix = "Touchscreen";
			break;
		case HID_DG_TOUCHPAD:
			suffix = "Touchpad";
			break;
		case HID_GD_SYSTEM_CONTROL:
			suffix = "System Control";
			break;
		case HID_CP_CONSUMER_CONTROL:
			suffix = "Consumer Control";
			break;
		case HID_GD_WIRELESS_RADIO_CTLS:
			suffix = "Wireless Radio Control";
			break;
		case HID_GD_SYSTEM_MULTIAXIS:
			suffix = "System Multi Axis";
			break;
		default:
			break;
		}
	}

	if (suffix) {
		name_len = FUNC10(hid->name);
		suffix_len = FUNC10(suffix);
		if ((name_len < suffix_len) ||
		    FUNC9(hid->name + name_len - suffix_len, suffix)) {
			hidinput->name = FUNC5(GFP_KERNEL, "%s %s",
						   hid->name, suffix);
			if (!hidinput->name)
				goto fail;
		}
	}

	FUNC4(input_dev, hid);
	input_dev->event = hidinput_input_event;
	input_dev->open = hidinput_open;
	input_dev->close = hidinput_close;
	input_dev->setkeycode = hidinput_setkeycode;
	input_dev->getkeycode = hidinput_getkeycode;

	input_dev->name = hidinput->name ? hidinput->name : hid->name;
	input_dev->phys = hid->phys;
	input_dev->uniq = hid->uniq;
	input_dev->id.bustype = hid->bus;
	input_dev->id.vendor  = hid->vendor;
	input_dev->id.product = hid->product;
	input_dev->id.version = hid->version;
	input_dev->dev.parent = &hid->dev;

	hidinput->input = input_dev;
	hidinput->application = application;
	FUNC8(&hidinput->list, &hid->inputs);

	FUNC0(&hidinput->reports);

	return hidinput;

fail:
	FUNC6(hidinput);
	FUNC3(input_dev);
	FUNC1(hid, "Out of memory during hid input probe\n");
	return NULL;
}