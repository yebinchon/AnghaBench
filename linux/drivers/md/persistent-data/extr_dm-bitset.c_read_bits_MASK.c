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
struct dm_disk_bitset {int current_index_set; int dirty; int /*<<< orphan*/  current_index; int /*<<< orphan*/  current_bits; int /*<<< orphan*/  array_info; } ;
typedef  int /*<<< orphan*/  dm_block_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dm_disk_bitset *info, dm_block_t root,
		     uint32_t array_index)
{
	int r;
	__le64 value;

	r = FUNC0(&info->array_info, root, array_index, &value);
	if (r)
		return r;

	info->current_bits = FUNC1(value);
	info->current_index_set = true;
	info->current_index = array_index;
	info->dirty = false;

	return 0;
}