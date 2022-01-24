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
struct input_mt_slot {int dummy; } ;
struct input_mt {int* red; int num_slots; struct input_mt_slot* slots; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct input_mt_slot*) ; 

__attribute__((used)) static void FUNC1(struct input_mt *mt,
			       int *slots, int num_pos)
{
	struct input_mt_slot *s;
	int *w = mt->red, j;

	for (j = 0; j != num_pos; j++)
		slots[j] = -1;

	for (s = mt->slots; s != mt->slots + mt->num_slots; s++) {
		if (!FUNC0(s))
			continue;

		for (j = 0; j != num_pos; j++) {
			if (w[j] < 0) {
				slots[j] = s - mt->slots;
				break;
			}
		}

		w += num_pos;
	}

	for (s = mt->slots; s != mt->slots + mt->num_slots; s++) {
		if (FUNC0(s))
			continue;

		for (j = 0; j != num_pos; j++) {
			if (slots[j] < 0) {
				slots[j] = s - mt->slots;
				break;
			}
		}
	}
}