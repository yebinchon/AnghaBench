#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct geom {int near_copies; int far_copies; } ;
struct r10conf {scalar_t__ const next_resync; int copies; TYPE_2__* mirrors; TYPE_3__* mddev; struct geom geo; } ;
struct r10bio {scalar_t__ sector; int sectors; int read_slot; TYPE_1__* devs; int /*<<< orphan*/  state; } ;
struct md_rdev {scalar_t__ recovery_offset; int /*<<< orphan*/  nr_pending; int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_9__ {scalar_t__ (* area_resyncing ) (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__ const,scalar_t__ const) ;} ;
struct TYPE_8__ {scalar_t__ recovery_cp; } ;
struct TYPE_7__ {scalar_t__ head_position; int /*<<< orphan*/  rdev; int /*<<< orphan*/  replacement; } ;
struct TYPE_6__ {scalar_t__ bio; int devnum; scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 scalar_t__ IO_BLOCKED ; 
 int /*<<< orphan*/  In_sync ; 
 scalar_t__ MaxSector ; 
 int /*<<< orphan*/  R10BIO_FailFast ; 
 int /*<<< orphan*/  READ ; 
 unsigned int UINT_MAX ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct md_rdev*,scalar_t__,int,scalar_t__*,int*) ; 
 TYPE_5__* md_cluster_ops ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct r10conf*,struct r10bio*) ; 
 struct md_rdev* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__ const,scalar_t__ const) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct md_rdev *FUNC15(struct r10conf *conf,
				    struct r10bio *r10_bio,
				    int *max_sectors)
{
	const sector_t this_sector = r10_bio->sector;
	int disk, slot;
	int sectors = r10_bio->sectors;
	int best_good_sectors;
	sector_t new_distance, best_dist;
	struct md_rdev *best_dist_rdev, *best_pending_rdev, *rdev = NULL;
	int do_balance;
	int best_dist_slot, best_pending_slot;
	bool has_nonrot_disk = false;
	unsigned int min_pending;
	struct geom *geo = &conf->geo;

	FUNC8(conf, r10_bio);
	FUNC10();
	best_dist_slot = -1;
	min_pending = UINT_MAX;
	best_dist_rdev = NULL;
	best_pending_rdev = NULL;
	best_dist = MaxSector;
	best_good_sectors = 0;
	do_balance = 1;
	FUNC5(R10BIO_FailFast, &r10_bio->state);
	/*
	 * Check if we can balance. We can balance on the whole
	 * device if no resync is going on (recovery is ok), or below
	 * the resync window. We take the first readable disk when
	 * above the resync window.
	 */
	if ((conf->mddev->recovery_cp < MaxSector
	     && (this_sector + sectors >= conf->next_resync)) ||
	    (FUNC7(conf->mddev) &&
	     md_cluster_ops->area_resyncing(conf->mddev, READ, this_sector,
					    this_sector + sectors)))
		do_balance = 0;

	for (slot = 0; slot < conf->copies ; slot++) {
		sector_t first_bad;
		int bad_sectors;
		sector_t dev_sector;
		unsigned int pending;
		bool nonrot;

		if (r10_bio->devs[slot].bio == IO_BLOCKED)
			continue;
		disk = r10_bio->devs[slot].devnum;
		rdev = FUNC9(conf->mirrors[disk].replacement);
		if (rdev == NULL || FUNC14(Faulty, &rdev->flags) ||
		    r10_bio->devs[slot].addr + sectors > rdev->recovery_offset)
			rdev = FUNC9(conf->mirrors[disk].rdev);
		if (rdev == NULL ||
		    FUNC14(Faulty, &rdev->flags))
			continue;
		if (!FUNC14(In_sync, &rdev->flags) &&
		    r10_bio->devs[slot].addr + sectors > rdev->recovery_offset)
			continue;

		dev_sector = r10_bio->devs[slot].addr;
		if (FUNC6(rdev, dev_sector, sectors,
				&first_bad, &bad_sectors)) {
			if (best_dist < MaxSector)
				/* Already have a better slot */
				continue;
			if (first_bad <= dev_sector) {
				/* Cannot read here.  If this is the
				 * 'primary' device, then we must not read
				 * beyond 'bad_sectors' from another device.
				 */
				bad_sectors -= (dev_sector - first_bad);
				if (!do_balance && sectors > bad_sectors)
					sectors = bad_sectors;
				if (best_good_sectors > sectors)
					best_good_sectors = sectors;
			} else {
				sector_t good_sectors =
					first_bad - dev_sector;
				if (good_sectors > best_good_sectors) {
					best_good_sectors = good_sectors;
					best_dist_slot = slot;
					best_dist_rdev = rdev;
				}
				if (!do_balance)
					/* Must read from here */
					break;
			}
			continue;
		} else
			best_good_sectors = sectors;

		if (!do_balance)
			break;

		nonrot = FUNC4(FUNC3(rdev->bdev));
		has_nonrot_disk |= nonrot;
		pending = FUNC2(&rdev->nr_pending);
		if (min_pending > pending && nonrot) {
			min_pending = pending;
			best_pending_slot = slot;
			best_pending_rdev = rdev;
		}

		if (best_dist_slot >= 0)
			/* At least 2 disks to choose from so failfast is OK */
			FUNC12(R10BIO_FailFast, &r10_bio->state);
		/* This optimisation is debatable, and completely destroys
		 * sequential read speed for 'far copies' arrays.  So only
		 * keep it for 'near' arrays, and review those later.
		 */
		if (geo->near_copies > 1 && !pending)
			new_distance = 0;

		/* for far > 1 always use the lowest address */
		else if (geo->far_copies > 1)
			new_distance = r10_bio->devs[slot].addr;
		else
			new_distance = FUNC0(r10_bio->devs[slot].addr -
					   conf->mirrors[disk].head_position);

		if (new_distance < best_dist) {
			best_dist = new_distance;
			best_dist_slot = slot;
			best_dist_rdev = rdev;
		}
	}
	if (slot >= conf->copies) {
		if (has_nonrot_disk) {
			slot = best_pending_slot;
			rdev = best_pending_rdev;
		} else {
			slot = best_dist_slot;
			rdev = best_dist_rdev;
		}
	}

	if (slot >= 0) {
		FUNC1(&rdev->nr_pending);
		r10_bio->read_slot = slot;
	} else
		rdev = NULL;
	FUNC11();
	*max_sectors = best_good_sectors;

	return rdev;
}