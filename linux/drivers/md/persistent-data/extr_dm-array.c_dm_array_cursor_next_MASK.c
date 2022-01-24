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
struct dm_array_cursor {scalar_t__ index; int /*<<< orphan*/  cursor; TYPE_1__* ab; int /*<<< orphan*/  block; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_entries; } ;

/* Variables and functions */
 int ENODATA ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dm_array_cursor*) ; 

int FUNC3(struct dm_array_cursor *c)
{
	int r;

	if (!c->block)
		return -ENODATA;

	c->index++;

	if (c->index >= FUNC1(c->ab->nr_entries)) {
		r = FUNC0(&c->cursor);
		if (r)
			return r;

		r = FUNC2(c);
		if (r)
			return r;
	}

	return 0;
}