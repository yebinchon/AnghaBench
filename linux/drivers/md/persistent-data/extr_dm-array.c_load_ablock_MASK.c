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
typedef  int /*<<< orphan*/  uint64_t ;
struct dm_array_cursor {int /*<<< orphan*/  cursor; int /*<<< orphan*/ * ab; int /*<<< orphan*/ * block; int /*<<< orphan*/  info; scalar_t__ index; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct dm_array_cursor *c)
{
	int r;
	__le64 value_le;
	uint64_t key;

	if (c->block)
		FUNC5(c->info, c->block);

	c->block = NULL;
	c->ab = NULL;
	c->index = 0;

	r = FUNC2(&c->cursor, &key, &value_le);
	if (r) {
		FUNC0("dm_btree_cursor_get_value failed");
		FUNC1(&c->cursor);

	} else {
		r = FUNC3(c->info, FUNC4(value_le), &c->block, &c->ab);
		if (r) {
			FUNC0("get_ablock failed");
			FUNC1(&c->cursor);
		}
	}

	return r;
}