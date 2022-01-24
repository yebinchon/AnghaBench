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
struct dm_disk_bitset {unsigned int current_index; scalar_t__ current_index_set; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 unsigned int BITS_PER_ARRAY_ENTRY ; 
 int FUNC0 (struct dm_disk_bitset*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct dm_disk_bitset*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct dm_disk_bitset *info, dm_block_t root,
			   uint32_t index, dm_block_t *new_root)
{
	int r;
	unsigned array_index = index / BITS_PER_ARRAY_ENTRY;

	if (info->current_index_set) {
		if (info->current_index == array_index)
			return 0;

		r = FUNC0(info, root, new_root);
		if (r)
			return r;
	}

	return FUNC1(info, root, array_index);
}