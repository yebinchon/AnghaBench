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
struct ll_disk {unsigned int nr_blocks; unsigned int (* max_entries ) (struct ll_disk*) ;int (* save_ie ) (struct ll_disk*,unsigned int,struct disk_index_entry*) ;int /*<<< orphan*/  entries_per_block; int /*<<< orphan*/  tm; } ;
struct dm_block {int dummy; } ;
struct disk_index_entry {scalar_t__ none_free_before; int /*<<< orphan*/  nr_free; int /*<<< orphan*/  blocknr; } ;
typedef  unsigned int dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_block*) ; 
 unsigned int FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dm_sm_bitmap_validator ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dm_block**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct dm_block*) ; 
 unsigned int FUNC7 (struct ll_disk*) ; 
 int FUNC8 (struct ll_disk*,unsigned int,struct disk_index_entry*) ; 

int FUNC9(struct ll_disk *ll, dm_block_t extra_blocks)
{
	int r;
	dm_block_t i, nr_blocks, nr_indexes;
	unsigned old_blocks, blocks;

	nr_blocks = ll->nr_blocks + extra_blocks;
	old_blocks = FUNC4(ll->nr_blocks, ll->entries_per_block);
	blocks = FUNC4(nr_blocks, ll->entries_per_block);

	nr_indexes = FUNC4(nr_blocks, ll->entries_per_block);
	if (nr_indexes > ll->max_entries(ll)) {
		FUNC0("space map too large");
		return -EINVAL;
	}

	/*
	 * We need to set this before the dm_tm_new_block() call below.
	 */
	ll->nr_blocks = nr_blocks;
	for (i = old_blocks; i < blocks; i++) {
		struct dm_block *b;
		struct disk_index_entry idx;

		r = FUNC5(ll->tm, &dm_sm_bitmap_validator, &b);
		if (r < 0)
			return r;

		idx.blocknr = FUNC2(FUNC3(b));

		FUNC6(ll->tm, b);

		idx.nr_free = FUNC1(ll->entries_per_block);
		idx.none_free_before = 0;

		r = ll->save_ie(ll, i, &idx);
		if (r < 0)
			return r;
	}

	return 0;
}