#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ chunksize; } ;
struct mddev {scalar_t__ recovery_cp; scalar_t__ resync_min; int /*<<< orphan*/  recovery; int /*<<< orphan*/  dev_sectors; scalar_t__ bitmap; TYPE_1__ bitmap_info; } ;
struct raid_set {int /*<<< orphan*/  runtime_flags; int /*<<< orphan*/  requested_bitmap_chunk_sectors; struct mddev md; } ;
struct dm_target {struct raid_set* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  MD_RECOVERY_FROZEN ; 
 int /*<<< orphan*/  MD_RECOVERY_SYNC ; 
 scalar_t__ MaxSector ; 
 int /*<<< orphan*/  RT_FLAG_RESHAPE_RS ; 
 int /*<<< orphan*/  RT_FLAG_RS_BITMAP_LOADED ; 
 int /*<<< orphan*/  RT_FLAG_RS_PRERESUMED ; 
 int /*<<< orphan*/  RT_FLAG_UPDATE_SBS ; 
 int FUNC2 (struct raid_set*) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC6 (struct raid_set*) ; 
 int FUNC7 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC8 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct dm_target *ti)
{
	int r;
	struct raid_set *rs = ti->private;
	struct mddev *mddev = &rs->md;

	/* This is a resume after a suspend of the set -> it's already started. */
	if (FUNC10(RT_FLAG_RS_PRERESUMED, &rs->runtime_flags))
		return 0;

	/*
	 * The superblocks need to be updated on disk if the
	 * array is new or new devices got added (thus zeroed
	 * out by userspace) or __load_dirty_region_bitmap
	 * will overwrite them in core with old data or fail.
	 */
	if (FUNC11(RT_FLAG_UPDATE_SBS, &rs->runtime_flags))
		FUNC8(rs);

	/* Load the bitmap from disk unless raid0 */
	r = FUNC2(rs);
	if (r)
		return r;

	/* Resize bitmap to adjust to changed region size (aka MD bitmap chunksize) */
	if (FUNC11(RT_FLAG_RS_BITMAP_LOADED, &rs->runtime_flags) && mddev->bitmap &&
	    mddev->bitmap_info.chunksize != FUNC12(rs->requested_bitmap_chunk_sectors)) {
		r = FUNC3(mddev->bitmap, mddev->dev_sectors,
				     FUNC12(rs->requested_bitmap_chunk_sectors), 0);
		if (r)
			FUNC0("Failed to resize bitmap");
	}

	/* Check for any resize/reshape on @rs and adjust/initiate */
	/* Be prepared for mddev_resume() in raid_resume() */
	FUNC9(MD_RECOVERY_FROZEN, &mddev->recovery);
	if (mddev->recovery_cp && mddev->recovery_cp < MaxSector) {
		FUNC9(MD_RECOVERY_SYNC, &mddev->recovery);
		mddev->resync_min = mddev->recovery_cp;
	}

	/* Check for any reshape request unless new raid set */
	if (FUNC11(RT_FLAG_RESHAPE_RS, &rs->runtime_flags)) {
		/* Initiate a reshape. */
		FUNC6(rs);
		FUNC4(mddev);
		r = FUNC7(rs);
		FUNC5(mddev);
		if (r)
			FUNC1("Failed to check/start reshape, continuing without change");
		r = 0;
	}

	return r;
}