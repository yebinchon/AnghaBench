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
typedef  unsigned int u8 ;
typedef  unsigned int u32 ;
typedef  unsigned int u16 ;
struct input_keymap_entry {int flags; unsigned int index; int keycode; } ;
struct input_dev {int keycodesize; unsigned int keycodemax; int /*<<< orphan*/  keybit; scalar_t__ keycode; } ;

/* Variables and functions */
 int EINVAL ; 
 int INPUT_KEYMAP_BY_INDEX ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct input_dev*,int) ; 
 int FUNC3 (struct input_keymap_entry const*,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev,
				    const struct input_keymap_entry *ke,
				    unsigned int *old_keycode)
{
	unsigned int index;
	int error;
	int i;

	if (!dev->keycodesize)
		return -EINVAL;

	if (ke->flags & INPUT_KEYMAP_BY_INDEX) {
		index = ke->index;
	} else {
		error = FUNC3(ke, &index);
		if (error)
			return error;
	}

	if (index >= dev->keycodemax)
		return -EINVAL;

	if (dev->keycodesize < sizeof(ke->keycode) &&
			(ke->keycode >> (dev->keycodesize * 8)))
		return -EINVAL;

	switch (dev->keycodesize) {
		case 1: {
			u8 *k = (u8 *)dev->keycode;
			*old_keycode = k[index];
			k[index] = ke->keycode;
			break;
		}
		case 2: {
			u16 *k = (u16 *)dev->keycode;
			*old_keycode = k[index];
			k[index] = ke->keycode;
			break;
		}
		default: {
			u32 *k = (u32 *)dev->keycode;
			*old_keycode = k[index];
			k[index] = ke->keycode;
			break;
		}
	}

	FUNC0(*old_keycode, dev->keybit);
	FUNC1(ke->keycode, dev->keybit);

	for (i = 0; i < dev->keycodemax; i++) {
		if (FUNC2(dev, i) == *old_keycode) {
			FUNC1(*old_keycode, dev->keybit);
			break; /* Setting the bit twice is useless, so break */
		}
	}

	return 0;
}