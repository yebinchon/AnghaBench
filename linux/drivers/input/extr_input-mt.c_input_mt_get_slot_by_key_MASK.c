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
struct input_mt_slot {int key; } ;
struct input_mt {int num_slots; struct input_mt_slot* slots; } ;
struct input_dev {struct input_mt* mt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct input_mt_slot*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_mt*,struct input_mt_slot*) ; 

int FUNC2(struct input_dev *dev, int key)
{
	struct input_mt *mt = dev->mt;
	struct input_mt_slot *s;

	if (!mt)
		return -1;

	for (s = mt->slots; s != mt->slots + mt->num_slots; s++)
		if (FUNC0(s) && s->key == key)
			return s - mt->slots;

	for (s = mt->slots; s != mt->slots + mt->num_slots; s++)
		if (!FUNC0(s) && !FUNC1(mt, s)) {
			s->key = key;
			return s - mt->slots;
		}

	return -1;
}