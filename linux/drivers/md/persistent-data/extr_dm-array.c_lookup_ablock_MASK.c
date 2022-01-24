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
typedef  unsigned int uint64_t ;
struct dm_block {int dummy; } ;
struct dm_array_info {int /*<<< orphan*/  btree_info; } ;
struct array_block {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct dm_array_info*,int /*<<< orphan*/ ,struct dm_block**,struct array_block**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dm_array_info *info, dm_block_t root,
			 unsigned index, struct dm_block **block,
			 struct array_block **ab)
{
	int r;
	uint64_t key = index;
	__le64 block_le;

	r = FUNC0(&info->btree_info, root, &key, &block_le);
	if (r)
		return r;

	return FUNC1(info, FUNC2(block_le), block, ab);
}