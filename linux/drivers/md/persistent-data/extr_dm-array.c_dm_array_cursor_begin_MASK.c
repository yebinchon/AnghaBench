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
struct dm_array_info {int /*<<< orphan*/  btree_info; } ;
struct dm_array_cursor {int /*<<< orphan*/  cursor; struct dm_array_info* info; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct dm_array_cursor*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_array_cursor*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct dm_array_info *info, dm_block_t root,
			  struct dm_array_cursor *c)
{
	int r;

	FUNC3(c, 0, sizeof(*c));
	c->info = info;
	r = FUNC1(&info->btree_info, root, true, &c->cursor);
	if (r) {
		FUNC0("couldn't create btree cursor");
		return r;
	}

	return FUNC2(c);
}