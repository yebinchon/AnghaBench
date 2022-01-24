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
struct dm_target {struct clone* private; } ;
struct clone {int /*<<< orphan*/  cmd; int /*<<< orphan*/  ios_in_flight; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {int bi_opf; TYPE_1__ bi_iter; } ;

/* Variables and functions */
 scalar_t__ CM_FAIL ; 
 int DM_MAPIO_KILL ; 
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_SUBMITTED ; 
 scalar_t__ READ ; 
 scalar_t__ REQ_OP_DISCARD ; 
 int REQ_PREFLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 unsigned long FUNC3 (struct clone*,struct bio*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_target*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct clone*) ; 
 int /*<<< orphan*/  FUNC7 (struct clone*,struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (struct clone*,struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (struct clone*,struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (struct clone*,struct bio*) ; 
 int /*<<< orphan*/  FUNC11 (struct clone*,struct bio*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct dm_target *ti, struct bio *bio)
{
	struct clone *clone = ti->private;
	unsigned long region_nr;

	FUNC0(&clone->ios_in_flight);

	if (FUNC12(FUNC6(clone) == CM_FAIL))
		return DM_MAPIO_KILL;

	/*
	 * REQ_PREFLUSH bios carry no data:
	 *
	 * - Commit metadata, if changed
	 *
	 * - Pass down to destination device
	 */
	if (bio->bi_opf & REQ_PREFLUSH) {
		FUNC9(clone, bio);
		return DM_MAPIO_SUBMITTED;
	}

	bio->bi_iter.bi_sector = FUNC5(ti, bio->bi_iter.bi_sector);

	/*
	 * dm-clone interprets discards and performs a fast hydration of the
	 * discarded regions, i.e., we skip the copy from the source device and
	 * just mark the regions as hydrated.
	 */
	if (FUNC2(bio) == REQ_OP_DISCARD) {
		FUNC8(clone, bio);
		return DM_MAPIO_SUBMITTED;
	}

	/*
	 * If the bio's region is hydrated, redirect it to the destination
	 * device.
	 *
	 * If the region is not hydrated and the bio is a READ, redirect it to
	 * the source device.
	 *
	 * Else, defer WRITE bio until after its region has been hydrated and
	 * start the region's hydration immediately.
	 */
	region_nr = FUNC3(clone, bio);
	if (FUNC4(clone->cmd, region_nr)) {
		FUNC9(clone, bio);
		return DM_MAPIO_SUBMITTED;
	} else if (FUNC1(bio) == READ) {
		FUNC11(clone, bio);
		return DM_MAPIO_REMAPPED;
	}

	FUNC10(clone, bio);
	FUNC7(clone, bio);

	return DM_MAPIO_SUBMITTED;
}