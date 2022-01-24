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
struct dm_disk_bitset {int current_index_set; int dirty; int /*<<< orphan*/  current_index; int /*<<< orphan*/  array_info; int /*<<< orphan*/  current_bits; } ;
typedef  int /*<<< orphan*/  dm_block_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(struct dm_disk_bitset *info, dm_block_t root,
		    dm_block_t *new_root)
{
	int r;
	__le64 value;

	if (!info->current_index_set || !info->dirty)
		return 0;

	value = FUNC1(info->current_bits);

	FUNC0(&value);
	r = FUNC2(&info->array_info, root, info->current_index,
			       &value, new_root);
	if (r)
		return r;

	info->current_index_set = false;
	info->dirty = false;

	return 0;
}