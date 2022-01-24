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
struct input_keymap_entry {unsigned int keycode; } ;
struct input_dev {int /*<<< orphan*/  keybit; } ;
struct hid_usage {scalar_t__ type; unsigned int code; int /*<<< orphan*/  hid; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ EV_KEY ; 
 unsigned int KEY_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hid_device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 struct hid_usage* FUNC3 (struct hid_device*,struct input_keymap_entry const*,int /*<<< orphan*/ *) ; 
 struct hid_device* FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  match_keycode ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct input_dev *dev,
			       const struct input_keymap_entry *ke,
			       unsigned int *old_keycode)
{
	struct hid_device *hid = FUNC4(dev);
	struct hid_usage *usage;

	usage = FUNC3(hid, ke, NULL);
	if (usage) {
		*old_keycode = usage->type == EV_KEY ?
				usage->code : KEY_RESERVED;
		usage->code = ke->keycode;

		FUNC0(*old_keycode, dev->keybit);
		FUNC5(usage->code, dev->keybit);
		FUNC1("Assigned keycode %d to HID usage code %x\n",
			usage->code, usage->hid);

		/*
		 * Set the keybit for the old keycode if the old keycode is used
		 * by another key
		 */
		if (FUNC2(hid, match_keycode, *old_keycode, NULL))
			FUNC5(*old_keycode, dev->keybit);

		return 0;
	}

	return -EINVAL;
}