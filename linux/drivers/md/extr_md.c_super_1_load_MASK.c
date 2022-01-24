#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  offset; } ;
struct mdp_superblock_1 {scalar_t__ magic; scalar_t__ major_version; scalar_t__ max_dev; scalar_t__ feature_map; scalar_t__ sb_csum; scalar_t__ new_offset; scalar_t__ cnt_corrected_read; scalar_t__ level; scalar_t__ dev_number; scalar_t__ bblog_offset; int bblog_shift; scalar_t__ layout; scalar_t__ chunksize; int /*<<< orphan*/  data_size; int /*<<< orphan*/  events; scalar_t__* set_uuid; TYPE_1__ ppl; int /*<<< orphan*/  bblog_size; int /*<<< orphan*/  data_offset; scalar_t__* pad3; scalar_t__ pad0; int /*<<< orphan*/  super_offset; } ;
struct TYPE_7__ {scalar_t__ offset; scalar_t__ sector; void* size; } ;
struct TYPE_10__ {scalar_t__ count; int shift; } ;
struct md_rdev {int sb_start; int preferred_minor; int data_offset; int new_data_offset; int sb_size; int desc_nr; int sectors; TYPE_4__* bdev; scalar_t__ sb_page; TYPE_2__ ppl; TYPE_5__ badblocks; scalar_t__ bb_page; int /*<<< orphan*/  corrected_errors; } ;
typedef  int sector_t ;
typedef  int s32 ;
typedef  int __u64 ;
typedef  scalar_t__ __s16 ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_9__ {int /*<<< orphan*/  bd_inode; TYPE_3__* bd_disk; } ;
struct TYPE_8__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LEVEL_MULTIPATH ; 
 int MD_FEATURE_ALL ; 
 int MD_FEATURE_BAD_BLOCKS ; 
 int MD_FEATURE_MULTIPLE_PPLS ; 
 int MD_FEATURE_NEW_OFFSET ; 
 int MD_FEATURE_PPL ; 
 int MD_FEATURE_RAID0_LAYOUT ; 
 int MD_FEATURE_RESHAPE_ACTIVE ; 
 int MD_SB_MAGIC ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (TYPE_5__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC4 (struct mdp_superblock_1*) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__*,scalar_t__*,int) ; 
 struct mdp_superblock_1* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct md_rdev*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct md_rdev*,int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC16(struct md_rdev *rdev, struct md_rdev *refdev, int minor_version)
{
	struct mdp_superblock_1 *sb;
	int ret;
	sector_t sb_start;
	sector_t sectors;
	char b[BDEVNAME_SIZE], b2[BDEVNAME_SIZE];
	int bmask;

	/*
	 * Calculate the position of the superblock in 512byte sectors.
	 * It is always aligned to a 4K boundary and
	 * depeding on minor_version, it can be:
	 * 0: At least 8K, but less than 12K, from end of device
	 * 1: At start of device
	 * 2: 4K from start of device.
	 */
	switch(minor_version) {
	case 0:
		sb_start = FUNC6(rdev->bdev->bd_inode) >> 9;
		sb_start -= 8*2;
		sb_start &= ~(sector_t)(4*2-1);
		break;
	case 1:
		sb_start = 0;
		break;
	case 2:
		sb_start = 8;
		break;
	default:
		return -EINVAL;
	}
	rdev->sb_start = sb_start;

	/* superblock is rarely larger than 1K, but it can be larger,
	 * and it is safe to read 4k, so we do that
	 */
	ret = FUNC14(rdev, 4096);
	if (ret) return ret;

	sb = FUNC11(rdev->sb_page);

	if (sb->magic != FUNC5(MD_SB_MAGIC) ||
	    sb->major_version != FUNC5(1) ||
	    FUNC8(sb->max_dev) > (4096-256)/2 ||
	    FUNC9(sb->super_offset) != rdev->sb_start ||
	    (FUNC8(sb->feature_map) & ~MD_FEATURE_ALL) != 0)
		return -EINVAL;

	if (FUNC4(sb) != sb->sb_csum) {
		FUNC12("md: invalid superblock checksum on %s\n",
			FUNC3(rdev->bdev,b));
		return -EINVAL;
	}
	if (FUNC9(sb->data_size) < 10) {
		FUNC12("md: data_size too small on %s\n",
			FUNC3(rdev->bdev,b));
		return -EINVAL;
	}
	if (sb->pad0 ||
	    sb->pad3[0] ||
	    FUNC10(sb->pad3, sb->pad3+1, sizeof(sb->pad3) - sizeof(sb->pad3[1])))
		/* Some padding is non-zero, might be a new feature */
		return -EINVAL;

	rdev->preferred_minor = 0xffff;
	rdev->data_offset = FUNC9(sb->data_offset);
	rdev->new_data_offset = rdev->data_offset;
	if ((FUNC8(sb->feature_map) & MD_FEATURE_RESHAPE_ACTIVE) &&
	    (FUNC8(sb->feature_map) & MD_FEATURE_NEW_OFFSET))
		rdev->new_data_offset += (s32)FUNC8(sb->new_offset);
	FUNC1(&rdev->corrected_errors, FUNC8(sb->cnt_corrected_read));

	rdev->sb_size = FUNC8(sb->max_dev) * 2 + 256;
	bmask = FUNC13(rdev->bdev->bd_disk->queue)-1;
	if (rdev->sb_size & bmask)
		rdev->sb_size = (rdev->sb_size | bmask) + 1;

	if (minor_version
	    && rdev->data_offset < sb_start + (rdev->sb_size/512))
		return -EINVAL;
	if (minor_version
	    && rdev->new_data_offset < sb_start + (rdev->sb_size/512))
		return -EINVAL;

	if (sb->level == FUNC5(LEVEL_MULTIPATH))
		rdev->desc_nr = -1;
	else
		rdev->desc_nr = FUNC8(sb->dev_number);

	if (!rdev->bb_page) {
		rdev->bb_page = FUNC0(GFP_KERNEL);
		if (!rdev->bb_page)
			return -ENOMEM;
	}
	if ((FUNC8(sb->feature_map) & MD_FEATURE_BAD_BLOCKS) &&
	    rdev->badblocks.count == 0) {
		/* need to load the bad block list.
		 * Currently we limit it to one page.
		 */
		s32 offset;
		sector_t bb_sector;
		__le64 *bbp;
		int i;
		int sectors = FUNC7(sb->bblog_size);
		if (sectors > (PAGE_SIZE / 512))
			return -EINVAL;
		offset = FUNC8(sb->bblog_offset);
		if (offset == 0)
			return -EINVAL;
		bb_sector = (long long)offset;
		if (!FUNC15(rdev, bb_sector, sectors << 9,
				  rdev->bb_page, REQ_OP_READ, 0, true))
			return -EIO;
		bbp = (__le64 *)FUNC11(rdev->bb_page);
		rdev->badblocks.shift = sb->bblog_shift;
		for (i = 0 ; i < (sectors << (9-3)) ; i++, bbp++) {
			u64 bb = FUNC9(*bbp);
			int count = bb & (0x3ff);
			u64 sector = bb >> 10;
			sector <<= sb->bblog_shift;
			count <<= sb->bblog_shift;
			if (bb + 1 == 0)
				break;
			if (FUNC2(&rdev->badblocks, sector, count, 1))
				return -EINVAL;
		}
	} else if (sb->bblog_offset != 0)
		rdev->badblocks.shift = 0;

	if ((FUNC8(sb->feature_map) &
	    (MD_FEATURE_PPL | MD_FEATURE_MULTIPLE_PPLS))) {
		rdev->ppl.offset = (__s16)FUNC7(sb->ppl.offset);
		rdev->ppl.size = FUNC7(sb->ppl.size);
		rdev->ppl.sector = rdev->sb_start + rdev->ppl.offset;
	}

	if ((FUNC8(sb->feature_map) & MD_FEATURE_RAID0_LAYOUT) &&
	    sb->level != 0)
		return -EINVAL;

	if (!refdev) {
		ret = 1;
	} else {
		__u64 ev1, ev2;
		struct mdp_superblock_1 *refsb = FUNC11(refdev->sb_page);

		if (FUNC10(sb->set_uuid, refsb->set_uuid, 16) != 0 ||
		    sb->level != refsb->level ||
		    sb->layout != refsb->layout ||
		    sb->chunksize != refsb->chunksize) {
			FUNC12("md: %s has strangely different superblock to %s\n",
				FUNC3(rdev->bdev,b),
				FUNC3(refdev->bdev,b2));
			return -EINVAL;
		}
		ev1 = FUNC9(sb->events);
		ev2 = FUNC9(refsb->events);

		if (ev1 > ev2)
			ret = 1;
		else
			ret = 0;
	}
	if (minor_version) {
		sectors = (FUNC6(rdev->bdev->bd_inode) >> 9);
		sectors -= rdev->data_offset;
	} else
		sectors = rdev->sb_start;
	if (sectors < FUNC9(sb->data_size))
		return -EINVAL;
	rdev->sectors = FUNC9(sb->data_size);
	return ret;
}