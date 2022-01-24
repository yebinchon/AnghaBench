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
typedef  unsigned int uint32_t ;
struct dm_disk_bitset {int dirty; int /*<<< orphan*/  current_bits; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 unsigned int BITS_PER_ARRAY_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned long*) ; 
 int FUNC1 (struct dm_disk_bitset*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 

int FUNC2(struct dm_disk_bitset *info, dm_block_t root,
			uint32_t index, dm_block_t *new_root)
{
	int r;
	unsigned b = index % BITS_PER_ARRAY_ENTRY;

	r = FUNC1(info, root, index, new_root);
	if (r)
		return r;

	FUNC0(b, (unsigned long *) &info->current_bits);
	info->dirty = true;

	return 0;
}