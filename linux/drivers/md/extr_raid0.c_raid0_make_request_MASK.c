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
struct strip_zone {unsigned int dev_start; } ;
struct r0conf {int layout; } ;
struct mddev {unsigned int chunk_sectors; scalar_t__ gendisk; struct r0conf* private; int /*<<< orphan*/  bio_set; } ;
struct md_rdev {unsigned int data_offset; int /*<<< orphan*/  bdev; } ;
struct TYPE_3__ {unsigned int bi_sector; } ;
struct bio {int bi_opf; TYPE_2__* bi_disk; TYPE_1__ bi_iter; } ;
typedef  unsigned int sector_t ;
struct TYPE_4__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
#define  RAID0_ALT_MULTIZONE_LAYOUT 129 
#define  RAID0_ORIG_LAYOUT 128 
 scalar_t__ REQ_OP_DISCARD ; 
 int REQ_PREFLUSH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 unsigned int FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int /*<<< orphan*/ ) ; 
 struct bio* FUNC6 (struct bio*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 struct strip_zone* FUNC8 (struct r0conf*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*) ; 
 int FUNC10 (struct md_rdev*,char*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 struct md_rdev* FUNC13 (struct mddev*,struct strip_zone*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC14 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC15 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC16 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC17 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC18 (struct mddev*,struct bio*) ; 
 unsigned int FUNC19 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC21 (int) ; 

__attribute__((used)) static bool FUNC22(struct mddev *mddev, struct bio *bio)
{
	struct r0conf *conf = mddev->private;
	struct strip_zone *zone;
	struct md_rdev *tmp_dev;
	sector_t bio_sector;
	sector_t sector;
	sector_t orig_sector;
	unsigned chunk_sects;
	unsigned sectors;

	if (FUNC21(bio->bi_opf & REQ_PREFLUSH)) {
		FUNC14(mddev, bio);
		return true;
	}

	if (FUNC21((FUNC3(bio) == REQ_OP_DISCARD))) {
		FUNC18(mddev, bio);
		return true;
	}

	bio_sector = bio->bi_iter.bi_sector;
	sector = bio_sector;
	chunk_sects = mddev->chunk_sectors;

	sectors = chunk_sects -
		(FUNC12(FUNC11(chunk_sects))
		 ? (sector & (chunk_sects-1))
		 : FUNC19(sector, chunk_sects));

	/* Restore due to sector_div */
	sector = bio_sector;

	if (sectors < FUNC4(bio)) {
		struct bio *split = FUNC6(bio, sectors, GFP_NOIO,
					      &mddev->bio_set);
		FUNC1(split, bio);
		FUNC9(bio);
		bio = split;
	}

	orig_sector = sector;
	zone = FUNC8(mddev->private, &sector);
	switch (conf->layout) {
	case RAID0_ORIG_LAYOUT:
		tmp_dev = FUNC13(mddev, zone, orig_sector, &sector);
		break;
	case RAID0_ALT_MULTIZONE_LAYOUT:
		tmp_dev = FUNC13(mddev, zone, sector, &sector);
		break;
	default:
		FUNC0("md/raid0:%s: Invalid layout\n", FUNC17(mddev));
		FUNC2(bio);
		return true;
	}

	if (FUNC21(FUNC10(tmp_dev, "raid0"))) {
		FUNC2(bio);
		return true;
	}

	FUNC5(bio, tmp_dev->bdev);
	bio->bi_iter.bi_sector = sector + zone->dev_start +
		tmp_dev->data_offset;

	if (mddev->gendisk)
		FUNC20(bio->bi_disk->queue, bio,
				FUNC7(mddev->gendisk), bio_sector);
	FUNC16(mddev, bio);
	FUNC15(mddev, bio);
	FUNC9(bio);
	return true;
}