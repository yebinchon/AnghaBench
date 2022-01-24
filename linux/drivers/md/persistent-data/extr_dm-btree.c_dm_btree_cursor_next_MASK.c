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
struct dm_btree_cursor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct dm_btree_cursor*) ; 
 int FUNC2 (struct dm_btree_cursor*) ; 

int FUNC3(struct dm_btree_cursor *c)
{
	int r = FUNC2(c);
	if (!r) {
		r = FUNC1(c);
		if (r)
			FUNC0("find_leaf failed");
	}

	return r;
}