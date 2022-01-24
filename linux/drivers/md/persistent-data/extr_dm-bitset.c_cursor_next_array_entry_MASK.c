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
struct dm_bitset_cursor {int /*<<< orphan*/  current_bits; scalar_t__ bit_index; int /*<<< orphan*/  array_index; int /*<<< orphan*/  cursor; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void**) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dm_bitset_cursor *c)
{
	int r;
	__le64 *value;

	r = FUNC1(&c->cursor);
	if (r)
		return r;

	FUNC0(&c->cursor, (void **) &value);
	c->array_index++;
	c->bit_index = 0;
	c->current_bits = FUNC2(*value);
	return 0;
}