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
struct key_entry {scalar_t__ type; unsigned int keycode; } ;
struct input_keymap_entry {unsigned int keycode; } ;
struct input_dev {int /*<<< orphan*/  keybit; scalar_t__ keycode; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ KE_KEY ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,unsigned int) ; 
 struct key_entry* FUNC3 (struct input_dev*,struct input_keymap_entry const*) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev,
				    const struct input_keymap_entry *ke,
				    unsigned int *old_keycode)
{
	struct key_entry *key;

	if (dev->keycode) {
		key = FUNC3(dev, ke);
		if (key && key->type == KE_KEY) {
			*old_keycode = key->keycode;
			key->keycode = ke->keycode;
			FUNC1(ke->keycode, dev->keybit);
			if (!FUNC2(dev, *old_keycode))
				FUNC0(*old_keycode, dev->keybit);
			return 0;
		}
	}

	return -EINVAL;
}