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
struct sony_sc {int quirks; } ;
struct hid_usage {unsigned int hid; int collection_index; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*) ; 
 int BUZZ_CONTROLLER ; 
 int DUALSHOCK4_CONTROLLER ; 
 int /*<<< orphan*/  EV_KEY ; 
 int HID_UP_BUTTON ; 
 unsigned int HID_USAGE ; 
 int HID_USAGE_PAGE ; 
 int NAVIGATION_CONTROLLER ; 
 int PS3REMOTE ; 
 int SIXAXIS_CONTROLLER ; 
 unsigned int* buzz_keymap ; 
 int FUNC1 (struct hid_device*,struct hid_input*,struct hid_field*,struct hid_usage*,unsigned long**,int*) ; 
 struct sony_sc* FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_input*,struct hid_usage*,unsigned long**,int*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (struct hid_device*,struct hid_input*,struct hid_field*,struct hid_usage*,unsigned long**,int*) ; 
 int FUNC5 (struct hid_device*,struct hid_input*,struct hid_field*,struct hid_usage*,unsigned long**,int*) ; 
 int FUNC6 (struct hid_device*,struct hid_input*,struct hid_field*,struct hid_usage*,unsigned long**,int*) ; 

__attribute__((used)) static int FUNC7(struct hid_device *hdev, struct hid_input *hi,
			struct hid_field *field, struct hid_usage *usage,
			unsigned long **bit, int *max)
{
	struct sony_sc *sc = FUNC2(hdev);

	if (sc->quirks & BUZZ_CONTROLLER) {
		unsigned int key = usage->hid & HID_USAGE;

		if ((usage->hid & HID_USAGE_PAGE) != HID_UP_BUTTON)
			return -1;

		switch (usage->collection_index) {
		case 1:
			if (key >= FUNC0(buzz_keymap))
				return -1;

			key = buzz_keymap[key];
			if (!key)
				return -1;
			break;
		default:
			return -1;
		}

		FUNC3(hi, usage, bit, max, EV_KEY, key);
		return 1;
	}

	if (sc->quirks & PS3REMOTE)
		return FUNC5(hdev, hi, field, usage, bit, max);

	if (sc->quirks & NAVIGATION_CONTROLLER)
		return FUNC4(hdev, hi, field, usage, bit, max);

	if (sc->quirks & SIXAXIS_CONTROLLER)
		return FUNC6(hdev, hi, field, usage, bit, max);

	if (sc->quirks & DUALSHOCK4_CONTROLLER)
		return FUNC1(hdev, hi, field, usage, bit, max);


	/* Let hid-core decide for the others */
	return 0;
}