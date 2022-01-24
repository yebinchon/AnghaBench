#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
struct dm_block {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; } ;
struct TYPE_4__ {int /*<<< orphan*/  tm; } ;
struct dm_array_info {TYPE_1__ value_type; TYPE_2__ btree_info; } ;
struct array_block {int /*<<< orphan*/  nr_entries; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int ENODATA ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_array_info*,struct array_block*,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dm_array_info*,int /*<<< orphan*/ ,unsigned int,struct dm_block**,struct array_block**) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_array_info*,struct dm_block*) ; 

int FUNC8(struct dm_array_info *info, dm_block_t root,
		       uint32_t index, void *value_le)
{
	int r;
	struct dm_block *block;
	struct array_block *ab;
	size_t size_of_block;
	unsigned entry, max_entries;

	size_of_block = FUNC1(FUNC2(info->btree_info.tm));
	max_entries = FUNC0(info->value_type.size, size_of_block);

	r = FUNC5(info, root, index / max_entries, &block, &ab);
	if (r)
		return r;

	entry = index % max_entries;
	if (entry >= FUNC4(ab->nr_entries))
		r = -ENODATA;
	else
		FUNC6(value_le, FUNC3(info, ab, entry),
		       info->value_type.size);

	FUNC7(info, block);
	return r;
}