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
typedef  scalar_t__ u64 ;
struct dmz_super {void* crc; void* nr_bitmap_blocks; void* nr_map_blocks; void* nr_chunks; void* nr_reserved_seq; void* nr_meta_blocks; void* sb_block; void* gen; void* version; void* magic; } ;
struct dmz_metadata {TYPE_2__* dev; int /*<<< orphan*/  nr_bitmap_blocks; int /*<<< orphan*/  nr_map_blocks; int /*<<< orphan*/  nr_chunks; int /*<<< orphan*/  nr_reserved_seq; int /*<<< orphan*/  nr_meta_blocks; scalar_t__ sb_gen; TYPE_1__* sb; } ;
struct dmz_mblock {int /*<<< orphan*/  page; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_3__ {struct dmz_super* sb; struct dmz_mblock* mblk; scalar_t__ block; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_BLOCK_SIZE ; 
 int /*<<< orphan*/  DMZ_MAGIC ; 
 int /*<<< orphan*/  DMZ_META_VER ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dmz_metadata*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dmz_metadata *zmd, unsigned int set)
{
	sector_t block = zmd->sb[set].block;
	struct dmz_mblock *mblk = zmd->sb[set].mblk;
	struct dmz_super *sb = zmd->sb[set].sb;
	u64 sb_gen = zmd->sb_gen + 1;
	int ret;

	sb->magic = FUNC1(DMZ_MAGIC);
	sb->version = FUNC1(DMZ_META_VER);

	sb->gen = FUNC2(sb_gen);

	sb->sb_block = FUNC2(block);
	sb->nr_meta_blocks = FUNC1(zmd->nr_meta_blocks);
	sb->nr_reserved_seq = FUNC1(zmd->nr_reserved_seq);
	sb->nr_chunks = FUNC1(zmd->nr_chunks);

	sb->nr_map_blocks = FUNC1(zmd->nr_map_blocks);
	sb->nr_bitmap_blocks = FUNC1(zmd->nr_bitmap_blocks);

	sb->crc = 0;
	sb->crc = FUNC1(FUNC3(sb_gen, (unsigned char *)sb, DMZ_BLOCK_SIZE));

	ret = FUNC4(zmd, REQ_OP_WRITE, block, mblk->page);
	if (ret == 0)
		ret = FUNC0(zmd->dev->bdev, GFP_NOIO, NULL);

	return ret;
}