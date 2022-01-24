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
struct xenkbd_key {int pressed; int /*<<< orphan*/  keycode; } ;
struct xenkbd_info {struct input_dev* kbd; struct input_dev* ptr; } ;
struct input_dev {int /*<<< orphan*/  key; int /*<<< orphan*/  keybit; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct xenkbd_info *info,
				    struct xenkbd_key *key)
{
	struct input_dev *dev;
	int value = key->pressed;

	if (FUNC3(key->keycode, info->ptr->keybit)) {
		dev = info->ptr;
	} else if (FUNC3(key->keycode, info->kbd->keybit)) {
		dev = info->kbd;
		if (key->pressed && FUNC3(key->keycode, info->kbd->key))
			value = 2; /* Mark as autorepeat */
	} else {
		FUNC2("unhandled keycode 0x%x\n", key->keycode);
		return;
	}

	if (FUNC4(!dev))
		return;

	FUNC0(dev, EV_KEY, key->keycode, value);
	FUNC1(dev);
}