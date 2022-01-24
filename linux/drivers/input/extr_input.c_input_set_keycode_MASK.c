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
struct input_value {unsigned int member_1; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_0; } ;
struct input_keymap_entry {scalar_t__ keycode; } ;
struct input_dev {int (* setkeycode ) (struct input_dev*,struct input_keymap_entry const*,unsigned int*) ;int /*<<< orphan*/  event_lock; int /*<<< orphan*/  key; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_value*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  EV_KEY ; 
 scalar_t__ KEY_MAX ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,struct input_value*,int /*<<< orphan*/ ) ; 
 struct input_value input_value_sync ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (struct input_dev*,struct input_keymap_entry const*,unsigned int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct input_dev *dev,
		      const struct input_keymap_entry *ke)
{
	unsigned long flags;
	unsigned int old_keycode;
	int retval;

	if (ke->keycode > KEY_MAX)
		return -EINVAL;

	FUNC5(&dev->event_lock, flags);

	retval = dev->setkeycode(dev, ke, &old_keycode);
	if (retval)
		goto out;

	/* Make sure KEY_RESERVED did not get enabled. */
	FUNC1(KEY_RESERVED, dev->keybit);

	/*
	 * Simulate keyup event if keycode is not present
	 * in the keymap anymore
	 */
	if (FUNC8(EV_KEY, dev->evbit) &&
	    !FUNC4(old_keycode, dev->keybit, KEY_MAX) &&
	    FUNC2(old_keycode, dev->key)) {
		struct input_value vals[] =  {
			{ EV_KEY, old_keycode, 0 },
			input_value_sync
		};

		FUNC3(dev, vals, FUNC0(vals));
	}

 out:
	FUNC6(&dev->event_lock, flags);

	return retval;
}