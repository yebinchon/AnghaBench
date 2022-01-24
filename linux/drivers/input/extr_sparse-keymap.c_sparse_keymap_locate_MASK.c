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
struct key_entry {int dummy; } ;
struct input_keymap_entry {int flags; int /*<<< orphan*/  index; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int INPUT_KEYMAP_BY_INDEX ; 
 scalar_t__ FUNC0 (struct input_keymap_entry const*,unsigned int*) ; 
 struct key_entry* FUNC1 (struct input_dev*,int /*<<< orphan*/ ) ; 
 struct key_entry* FUNC2 (struct input_dev*,unsigned int) ; 

__attribute__((used)) static struct key_entry *FUNC3(struct input_dev *dev,
					const struct input_keymap_entry *ke)
{
	struct key_entry *key;
	unsigned int scancode;

	if (ke->flags & INPUT_KEYMAP_BY_INDEX)
		key = FUNC1(dev, ke->index);
	else if (FUNC0(ke, &scancode) == 0)
		key = FUNC2(dev, scancode);
	else
		key = NULL;

	return key;
}