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
typedef  scalar_t__ uint32_t ;
struct dm_bitset_cursor {int bit_index; scalar_t__ entries_remaining; scalar_t__ array_index; int /*<<< orphan*/  current_bits; int /*<<< orphan*/  cursor; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void**) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct dm_bitset_cursor *c, uint32_t count)
{
	int r;
	__le64 *value;
	uint32_t nr_array_skip;
	uint32_t remaining_in_word = 64 - c->bit_index;

	if (c->entries_remaining < count)
		return -ENODATA;

	if (count < remaining_in_word) {
		c->bit_index += count;
		c->entries_remaining -= count;
		return 0;

	} else {
		c->entries_remaining -= remaining_in_word;
		count -= remaining_in_word;
	}

	nr_array_skip = (count / 64) + 1;
	r = FUNC1(&c->cursor, nr_array_skip);
	if (r)
		return r;

	FUNC0(&c->cursor, (void **) &value);
	c->entries_remaining -= count;
	c->array_index += nr_array_skip;
	c->bit_index = count & 63;
	c->current_bits = FUNC2(*value);

	return 0;
}