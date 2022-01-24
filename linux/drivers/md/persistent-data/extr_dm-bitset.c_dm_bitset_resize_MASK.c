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
typedef  int /*<<< orphan*/  uint32_t ;
struct dm_disk_bitset {int /*<<< orphan*/  array_info; } ;
typedef  int /*<<< orphan*/  dm_block_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  BITS_PER_ARRAY_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct dm_disk_bitset *info, dm_block_t root,
		     uint32_t old_nr_entries, uint32_t new_nr_entries,
		     bool default_value, dm_block_t *new_root)
{
	uint32_t old_blocks = FUNC3(old_nr_entries, BITS_PER_ARRAY_ENTRY);
	uint32_t new_blocks = FUNC3(new_nr_entries, BITS_PER_ARRAY_ENTRY);
	__le64 value = default_value ? FUNC1(~0) : FUNC1(0);

	FUNC0(&value);
	return FUNC2(&info->array_info, root, old_blocks, new_blocks,
			       &value, new_root);
}