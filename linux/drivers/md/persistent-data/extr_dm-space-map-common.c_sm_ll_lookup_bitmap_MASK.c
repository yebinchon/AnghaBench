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
struct ll_disk {int (* load_ie ) (struct ll_disk*,int /*<<< orphan*/ ,struct disk_index_entry*) ;int /*<<< orphan*/  tm; int /*<<< orphan*/  entries_per_block; } ;
struct dm_block {int dummy; } ;
struct disk_index_entry {int /*<<< orphan*/  blocknr; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_block*) ; 
 int /*<<< orphan*/  dm_sm_bitmap_validator ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dm_block**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dm_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ll_disk*,int /*<<< orphan*/ ,struct disk_index_entry*) ; 

int FUNC7(struct ll_disk *ll, dm_block_t b, uint32_t *result)
{
	int r;
	dm_block_t index = b;
	struct disk_index_entry ie_disk;
	struct dm_block *blk;

	b = FUNC3(index, ll->entries_per_block);
	r = ll->load_ie(ll, index, &ie_disk);
	if (r < 0)
		return r;

	r = FUNC1(ll->tm, FUNC4(ie_disk.blocknr),
			    &dm_sm_bitmap_validator, &blk);
	if (r < 0)
		return r;

	*result = FUNC5(FUNC0(blk), b);

	FUNC2(ll->tm, blk);

	return 0;
}