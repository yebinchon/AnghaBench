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
typedef  int /*<<< orphan*/  value_fn ;
typedef  unsigned int uint32_t ;
struct dm_block {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
struct TYPE_3__ {int /*<<< orphan*/  tm; } ;
struct dm_array_info {TYPE_2__ value_type; TYPE_1__ btree_info; } ;
struct array_block {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int FUNC0 (struct dm_array_info*,unsigned int,unsigned int,struct dm_block**,struct array_block**) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (struct dm_array_info*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dm_array_info*,unsigned int,struct dm_block*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,unsigned int) ; 
 int FUNC8 (struct dm_array_info*,struct array_block*,int /*<<< orphan*/ ,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_array_info*,struct dm_block*) ; 

int FUNC10(struct dm_array_info *info, dm_block_t *root,
		 uint32_t size, value_fn fn, void *context)
{
	int r;
	struct dm_block *block;
	struct array_block *ab;
	unsigned block_index, end_block, size_of_block, max_entries;

	r = FUNC2(info, root);
	if (r)
		return r;

	size_of_block = FUNC3(FUNC5(info->btree_info.tm));
	max_entries = FUNC1(info->value_type.size, size_of_block);
	end_block = FUNC4(size, max_entries);

	for (block_index = 0; block_index != end_block; block_index++) {
		r = FUNC0(info, size_of_block, max_entries, &block, &ab);
		if (r)
			break;

		r = FUNC8(info, ab, fn, context,
						block_index * max_entries,
						FUNC7(max_entries, size));
		if (r) {
			FUNC9(info, block);
			break;
		}

		r = FUNC6(info, block_index, block, root);
		FUNC9(info, block);
		if (r)
			break;

		size -= max_entries;
	}

	return r;
}