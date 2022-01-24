#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct dm_array_cursor {scalar_t__ index; TYPE_1__* ab; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_entries; } ;

/* Variables and functions */
 int FUNC0 (struct dm_array_cursor*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct dm_array_cursor *c, uint32_t count)
{
	int r;

	do {
		uint32_t remaining = FUNC1(c->ab->nr_entries) - c->index;

		if (count < remaining) {
			c->index += count;
			return 0;
		}

		count -= remaining;
		r = FUNC0(c);

	} while (!r);

	return r;
}