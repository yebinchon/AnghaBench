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
struct mdp_superblock_1 {int devflags; int /*<<< orphan*/  feature_map; int /*<<< orphan*/  recovery_offset; int /*<<< orphan*/  journal_tail; int /*<<< orphan*/ * dev_roles; int /*<<< orphan*/  max_dev; int /*<<< orphan*/  new_chunk; int /*<<< orphan*/  new_layout; int /*<<< orphan*/  new_level; int /*<<< orphan*/  delta_disks; int /*<<< orphan*/  reshape_position; int /*<<< orphan*/  bitmap_offset; int /*<<< orphan*/  set_uuid; int /*<<< orphan*/  resync_offset; int /*<<< orphan*/  size; int /*<<< orphan*/  raid_disks; int /*<<< orphan*/  layout; int /*<<< orphan*/  level; int /*<<< orphan*/  utime; int /*<<< orphan*/  ctime; int /*<<< orphan*/  chunksize; int /*<<< orphan*/  events; } ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ space; int default_offset; int default_space; int /*<<< orphan*/ * file; } ;
struct mddev {int raid_disks; int major_version; int chunk_sectors; int level; int layout; scalar_t__ events; int reshape_backwards; int max_disks; scalar_t__ minor_version; int delta_disks; int new_level; int new_layout; int new_chunk_sectors; int /*<<< orphan*/  recovery; TYPE_1__* bitmap; int /*<<< orphan*/ * pers; int /*<<< orphan*/  flags; void* reshape_position; TYPE_2__ bitmap_info; int /*<<< orphan*/  uuid; void* recovery_cp; void* dev_sectors; scalar_t__* clevel; void* utime; void* ctime; scalar_t__ external; scalar_t__ patch_version; } ;
struct md_rdev {int raid_disk; int desc_nr; int saved_raid_disk; int /*<<< orphan*/  flags; void* recovery_offset; void* journal_tail; int /*<<< orphan*/  sb_page; } ;
typedef  scalar_t__ __u64 ;
typedef  scalar_t__ __s32 ;
struct TYPE_3__ {scalar_t__ events_cleared; } ;

/* Variables and functions */
 int /*<<< orphan*/  Bitmap_sync ; 
 int EINVAL ; 
 int /*<<< orphan*/  FailFast ; 
 int FailFast1 ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  Journal ; 
 int LEVEL_MULTIPATH ; 
#define  MD_DISK_ROLE_FAULTY 130 
#define  MD_DISK_ROLE_JOURNAL 129 
 int MD_DISK_ROLE_MAX ; 
#define  MD_DISK_ROLE_SPARE 128 
 int MD_FEATURE_BITMAP_OFFSET ; 
 int MD_FEATURE_JOURNAL ; 
 int MD_FEATURE_MULTIPLE_PPLS ; 
 int MD_FEATURE_PPL ; 
 int MD_FEATURE_RAID0_LAYOUT ; 
 int MD_FEATURE_RECOVERY_BITMAP ; 
 int MD_FEATURE_RECOVERY_OFFSET ; 
 int MD_FEATURE_REPLACEMENT ; 
 int MD_FEATURE_RESHAPE_ACTIVE ; 
 int MD_FEATURE_RESHAPE_BACKWARDS ; 
 int /*<<< orphan*/  MD_HAS_JOURNAL ; 
 int /*<<< orphan*/  MD_HAS_PPL ; 
 int /*<<< orphan*/  MD_RECOVERY_FROZEN ; 
 void* MaxSector ; 
 int /*<<< orphan*/  Replacement ; 
 int /*<<< orphan*/  WriteMostly ; 
 int WriteMostly1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mdp_superblock_1* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct mddev *mddev, struct md_rdev *rdev)
{
	struct mdp_superblock_1 *sb = FUNC5(rdev->sb_page);
	__u64 ev1 = FUNC3(sb->events);

	rdev->raid_disk = -1;
	FUNC0(Faulty, &rdev->flags);
	FUNC0(In_sync, &rdev->flags);
	FUNC0(Bitmap_sync, &rdev->flags);
	FUNC0(WriteMostly, &rdev->flags);

	if (mddev->raid_disks == 0) {
		mddev->major_version = 1;
		mddev->patch_version = 0;
		mddev->external = 0;
		mddev->chunk_sectors = FUNC2(sb->chunksize);
		mddev->ctime = FUNC3(sb->ctime);
		mddev->utime = FUNC3(sb->utime);
		mddev->level = FUNC2(sb->level);
		mddev->clevel[0] = 0;
		mddev->layout = FUNC2(sb->layout);
		mddev->raid_disks = FUNC2(sb->raid_disks);
		mddev->dev_sectors = FUNC3(sb->size);
		mddev->events = ev1;
		mddev->bitmap_info.offset = 0;
		mddev->bitmap_info.space = 0;
		/* Default location for bitmap is 1K after superblock
		 * using 3K - total of 4K
		 */
		mddev->bitmap_info.default_offset = 1024 >> 9;
		mddev->bitmap_info.default_space = (4096-1024) >> 9;
		mddev->reshape_backwards = 0;

		mddev->recovery_cp = FUNC3(sb->resync_offset);
		FUNC4(mddev->uuid, sb->set_uuid, 16);

		mddev->max_disks =  (4096-256)/2;

		if ((FUNC2(sb->feature_map) & MD_FEATURE_BITMAP_OFFSET) &&
		    mddev->bitmap_info.file == NULL) {
			mddev->bitmap_info.offset =
				(__s32)FUNC2(sb->bitmap_offset);
			/* Metadata doesn't record how much space is available.
			 * For 1.0, we assume we can use up to the superblock
			 * if before, else to 4K beyond superblock.
			 * For others, assume no change is possible.
			 */
			if (mddev->minor_version > 0)
				mddev->bitmap_info.space = 0;
			else if (mddev->bitmap_info.offset > 0)
				mddev->bitmap_info.space =
					8 - mddev->bitmap_info.offset;
			else
				mddev->bitmap_info.space =
					-mddev->bitmap_info.offset;
		}

		if ((FUNC2(sb->feature_map) & MD_FEATURE_RESHAPE_ACTIVE)) {
			mddev->reshape_position = FUNC3(sb->reshape_position);
			mddev->delta_disks = FUNC2(sb->delta_disks);
			mddev->new_level = FUNC2(sb->new_level);
			mddev->new_layout = FUNC2(sb->new_layout);
			mddev->new_chunk_sectors = FUNC2(sb->new_chunk);
			if (mddev->delta_disks < 0 ||
			    (mddev->delta_disks == 0 &&
			     (FUNC2(sb->feature_map)
			      & MD_FEATURE_RESHAPE_BACKWARDS)))
				mddev->reshape_backwards = 1;
		} else {
			mddev->reshape_position = MaxSector;
			mddev->delta_disks = 0;
			mddev->new_level = mddev->level;
			mddev->new_layout = mddev->layout;
			mddev->new_chunk_sectors = mddev->chunk_sectors;
		}

		if (mddev->level == 0 &&
		    !(FUNC2(sb->feature_map) & MD_FEATURE_RAID0_LAYOUT))
			mddev->layout = -1;

		if (FUNC2(sb->feature_map) & MD_FEATURE_JOURNAL)
			FUNC7(MD_HAS_JOURNAL, &mddev->flags);

		if (FUNC2(sb->feature_map) &
		    (MD_FEATURE_PPL | MD_FEATURE_MULTIPLE_PPLS)) {
			if (FUNC2(sb->feature_map) &
			    (MD_FEATURE_BITMAP_OFFSET | MD_FEATURE_JOURNAL))
				return -EINVAL;
			if ((FUNC2(sb->feature_map) & MD_FEATURE_PPL) &&
			    (FUNC2(sb->feature_map) &
					    MD_FEATURE_MULTIPLE_PPLS))
				return -EINVAL;
			FUNC7(MD_HAS_PPL, &mddev->flags);
		}
	} else if (mddev->pers == NULL) {
		/* Insist of good event counter while assembling, except for
		 * spares (which don't need an event count) */
		++ev1;
		if (rdev->desc_nr >= 0 &&
		    rdev->desc_nr < FUNC2(sb->max_dev) &&
		    (FUNC1(sb->dev_roles[rdev->desc_nr]) < MD_DISK_ROLE_MAX ||
		     FUNC1(sb->dev_roles[rdev->desc_nr]) == MD_DISK_ROLE_JOURNAL))
			if (ev1 < mddev->events)
				return -EINVAL;
	} else if (mddev->bitmap) {
		/* If adding to array with a bitmap, then we can accept an
		 * older device, but not too old.
		 */
		if (ev1 < mddev->bitmap->events_cleared)
			return 0;
		if (ev1 < mddev->events)
			FUNC7(Bitmap_sync, &rdev->flags);
	} else {
		if (ev1 < mddev->events)
			/* just a hot-add of a new device, leave raid_disk at -1 */
			return 0;
	}
	if (mddev->level != LEVEL_MULTIPATH) {
		int role;
		if (rdev->desc_nr < 0 ||
		    rdev->desc_nr >= FUNC2(sb->max_dev)) {
			role = MD_DISK_ROLE_SPARE;
			rdev->desc_nr = -1;
		} else
			role = FUNC1(sb->dev_roles[rdev->desc_nr]);
		switch(role) {
		case MD_DISK_ROLE_SPARE: /* spare */
			break;
		case MD_DISK_ROLE_FAULTY: /* faulty */
			FUNC7(Faulty, &rdev->flags);
			break;
		case MD_DISK_ROLE_JOURNAL: /* journal device */
			if (!(FUNC2(sb->feature_map) & MD_FEATURE_JOURNAL)) {
				/* journal device without journal feature */
				FUNC6("md: journal device provided without journal feature, ignoring the device\n");
				return -EINVAL;
			}
			FUNC7(Journal, &rdev->flags);
			rdev->journal_tail = FUNC3(sb->journal_tail);
			rdev->raid_disk = 0;
			break;
		default:
			rdev->saved_raid_disk = role;
			if ((FUNC2(sb->feature_map) &
			     MD_FEATURE_RECOVERY_OFFSET)) {
				rdev->recovery_offset = FUNC3(sb->recovery_offset);
				if (!(FUNC2(sb->feature_map) &
				      MD_FEATURE_RECOVERY_BITMAP))
					rdev->saved_raid_disk = -1;
			} else {
				/*
				 * If the array is FROZEN, then the device can't
				 * be in_sync with rest of array.
				 */
				if (!FUNC8(MD_RECOVERY_FROZEN,
					      &mddev->recovery))
					FUNC7(In_sync, &rdev->flags);
			}
			rdev->raid_disk = role;
			break;
		}
		if (sb->devflags & WriteMostly1)
			FUNC7(WriteMostly, &rdev->flags);
		if (sb->devflags & FailFast1)
			FUNC7(FailFast, &rdev->flags);
		if (FUNC2(sb->feature_map) & MD_FEATURE_REPLACEMENT)
			FUNC7(Replacement, &rdev->flags);
	} else /* MULTIPATH are always insync */
		FUNC7(In_sync, &rdev->flags);

	return 0;
}