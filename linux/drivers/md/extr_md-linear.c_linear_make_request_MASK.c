#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mddev {scalar_t__ gendisk; int /*<<< orphan*/  bio_set; } ;
struct dev_info {scalar_t__ end_sector; TYPE_3__* rdev; } ;
struct TYPE_5__ {scalar_t__ bi_sector; } ;
struct bio {int bi_opf; TYPE_2__ bi_iter; TYPE_1__* bi_disk; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_6__ {scalar_t__ sectors; scalar_t__ data_offset; int /*<<< orphan*/  bdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ REQ_OP_DISCARD ; 
 int REQ_PREFLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,struct bio*) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 scalar_t__ FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,int /*<<< orphan*/ ) ; 
 struct bio* FUNC7 (struct bio*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct bio*) ; 
 int FUNC11 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC13 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC14 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC15 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC18 (int) ; 
 struct dev_info* FUNC19 (struct mddev*,scalar_t__) ; 

__attribute__((used)) static bool FUNC20(struct mddev *mddev, struct bio *bio)
{
	char b[BDEVNAME_SIZE];
	struct dev_info *tmp_dev;
	sector_t start_sector, end_sector, data_offset;
	sector_t bio_sector = bio->bi_iter.bi_sector;

	if (FUNC18(bio->bi_opf & REQ_PREFLUSH)) {
		FUNC12(mddev, bio);
		return true;
	}

	tmp_dev = FUNC19(mddev, bio_sector);
	start_sector = tmp_dev->end_sector - tmp_dev->rdev->sectors;
	end_sector = tmp_dev->end_sector;
	data_offset = tmp_dev->rdev->data_offset;

	if (FUNC18(bio_sector >= end_sector ||
		     bio_sector < start_sector))
		goto out_of_bounds;

	if (FUNC18(FUNC11(tmp_dev->rdev, "linear"))) {
		FUNC4(bio);
		return true;
	}

	if (FUNC18(FUNC2(bio) > end_sector)) {
		/* This bio crosses a device boundary, so we have to split it */
		struct bio *split = FUNC7(bio, end_sector - bio_sector,
					      GFP_NOIO, &mddev->bio_set);
		FUNC1(split, bio);
		FUNC10(bio);
		bio = split;
	}

	FUNC6(bio, tmp_dev->rdev->bdev);
	bio->bi_iter.bi_sector = bio->bi_iter.bi_sector -
		start_sector + data_offset;

	if (FUNC18((FUNC5(bio) == REQ_OP_DISCARD) &&
		     !FUNC8(bio->bi_disk->queue))) {
		/* Just ignore it */
		FUNC3(bio);
	} else {
		if (mddev->gendisk)
			FUNC17(bio->bi_disk->queue,
					      bio, FUNC9(mddev->gendisk),
					      bio_sector);
		FUNC14(mddev, bio);
		FUNC13(mddev, bio);
		FUNC10(bio);
	}
	return true;

out_of_bounds:
	FUNC16("md/linear:%s: make_request: Sector %llu out of bounds on dev %s: %llu sectors, offset %llu\n",
	       FUNC15(mddev),
	       (unsigned long long)bio->bi_iter.bi_sector,
	       FUNC0(tmp_dev->rdev->bdev, b),
	       (unsigned long long)tmp_dev->rdev->sectors,
	       (unsigned long long)start_sector);
	FUNC4(bio);
	return true;
}