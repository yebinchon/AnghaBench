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
struct input_keymap_entry {int dummy; } ;
struct input_dev {int (* getkeycode ) (struct input_dev*,struct input_keymap_entry*) ;int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct input_dev*,struct input_keymap_entry*) ; 

int FUNC3(struct input_dev *dev, struct input_keymap_entry *ke)
{
	unsigned long flags;
	int retval;

	FUNC0(&dev->event_lock, flags);
	retval = dev->getkeycode(dev, ke);
	FUNC1(&dev->event_lock, flags);

	return retval;
}