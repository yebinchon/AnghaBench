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
struct input_keymap_entry {int flags; unsigned int index; unsigned int keycode; } ;
struct input_dev {int /*<<< orphan*/  keybit; } ;
struct ati_remote2 {unsigned int** keycode; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int ATI_REMOTE2_MODES ; 
 unsigned int ATI_REMOTE2_PC ; 
 int EINVAL ; 
 int INPUT_KEYMAP_BY_INDEX ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ati_remote2_key_table ; 
 int FUNC3 (unsigned int) ; 
 struct ati_remote2* FUNC4 (struct input_dev*) ; 
 scalar_t__ FUNC5 (struct input_keymap_entry const*,unsigned int*) ; 

__attribute__((used)) static int FUNC6(struct input_dev *idev,
				  const struct input_keymap_entry *ke,
				  unsigned int *old_keycode)
{
	struct ati_remote2 *ar2 = FUNC4(idev);
	unsigned int mode;
	int offset;
	unsigned int index;
	unsigned int scancode;

	if (ke->flags & INPUT_KEYMAP_BY_INDEX) {
		if (ke->index >= ATI_REMOTE2_MODES *
				FUNC0(ati_remote2_key_table))
			return -EINVAL;

		mode = ke->index / FUNC0(ati_remote2_key_table);
		offset = ke->index % FUNC0(ati_remote2_key_table);
	} else {
		if (FUNC5(ke, &scancode))
			return -EINVAL;

		mode = scancode >> 8;
		if (mode > ATI_REMOTE2_PC)
			return -EINVAL;

		offset = FUNC3(scancode & 0xff);
		if (offset < 0)
			return -EINVAL;
	}

	*old_keycode = ar2->keycode[mode][offset];
	ar2->keycode[mode][offset] = ke->keycode;
	FUNC2(ke->keycode, idev->keybit);

	for (mode = 0; mode < ATI_REMOTE2_MODES; mode++) {
		for (index = 0; index < FUNC0(ati_remote2_key_table); index++) {
			if (ar2->keycode[mode][index] == *old_keycode)
				return 0;
		}
	}

	FUNC1(*old_keycode, idev->keybit);

	return 0;
}