#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct r10conf {int /*<<< orphan*/  bio_split; TYPE_1__* mirrors; } ;
struct r10bio {int read_slot; int sectors; scalar_t__ sector; int /*<<< orphan*/  state; TYPE_3__* devs; struct bio* master_bio; } ;
struct mddev {scalar_t__ gendisk; int /*<<< orphan*/  bio_set; struct r10conf* private; } ;
struct md_rdev {int /*<<< orphan*/  flags; int /*<<< orphan*/  bdev; } ;
struct TYPE_6__ {scalar_t__ bi_sector; } ;
struct bio {unsigned long bi_opf; TYPE_4__* bi_disk; struct r10bio* bi_private; int /*<<< orphan*/  bi_end_io; TYPE_2__ bi_iter; } ;
typedef  int gfp_t ;
struct TYPE_8__ {int /*<<< orphan*/  queue; } ;
struct TYPE_7__ {int devnum; scalar_t__ addr; struct md_rdev* rdev; struct bio* bio; } ;
struct TYPE_5__ {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  FailFast ; 
 int GFP_NOIO ; 
 unsigned long MD_FAILFAST ; 
 int /*<<< orphan*/  R10BIO_FailFast ; 
 unsigned long REQ_SYNC ; 
 int __GFP_HIGH ; 
 int /*<<< orphan*/  FUNC0 (struct r10conf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,struct bio*) ; 
 struct bio* FUNC3 (struct bio*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct bio*) ; 
 int FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*,int const,unsigned long const) ; 
 struct bio* FUNC8 (struct bio*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct r10bio*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct bio*) ; 
 int /*<<< orphan*/  FUNC12 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  raid10_end_read_request ; 
 int /*<<< orphan*/  FUNC15 (struct r10bio*) ; 
 struct md_rdev* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 struct md_rdev* FUNC19 (struct r10conf*,struct r10bio*,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct mddev*,struct r10conf*,struct bio*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (struct r10conf*) ; 

__attribute__((used)) static void FUNC25(struct mddev *mddev, struct bio *bio,
				struct r10bio *r10_bio)
{
	struct r10conf *conf = mddev->private;
	struct bio *read_bio;
	const int op = FUNC4(bio);
	const unsigned long do_sync = (bio->bi_opf & REQ_SYNC);
	int max_sectors;
	struct md_rdev *rdev;
	char b[BDEVNAME_SIZE];
	int slot = r10_bio->read_slot;
	struct md_rdev *err_rdev = NULL;
	gfp_t gfp = GFP_NOIO;

	if (r10_bio->devs[slot].rdev) {
		/*
		 * This is an error retry, but we cannot
		 * safely dereference the rdev in the r10_bio,
		 * we must use the one in conf.
		 * If it has already been disconnected (unlikely)
		 * we lose the device name in error messages.
		 */
		int disk;
		/*
		 * As we are blocking raid10, it is a little safer to
		 * use __GFP_HIGH.
		 */
		gfp = GFP_NOIO | __GFP_HIGH;

		FUNC17();
		disk = r10_bio->devs[slot].devnum;
		err_rdev = FUNC16(conf->mirrors[disk].rdev);
		if (err_rdev)
			FUNC1(err_rdev->bdev, b);
		else {
			FUNC21(b, "???");
			/* This never gets dereferenced */
			err_rdev = r10_bio->devs[slot].rdev;
		}
		FUNC18();
	}

	FUNC20(mddev, conf, bio, r10_bio->sectors);
	rdev = FUNC19(conf, r10_bio, &max_sectors);
	if (!rdev) {
		if (err_rdev) {
			FUNC13("md/raid10:%s: %s: unrecoverable I/O read error for block %llu\n",
					    FUNC12(mddev), b,
					    (unsigned long long)r10_bio->sector);
		}
		FUNC15(r10_bio);
		return;
	}
	if (err_rdev)
		FUNC14("md/raid10:%s: %s: redirecting sector %llu to another mirror\n",
				   FUNC12(mddev),
				   FUNC1(rdev->bdev, b),
				   (unsigned long long)r10_bio->sector);
	if (max_sectors < FUNC5(bio)) {
		struct bio *split = FUNC8(bio, max_sectors,
					      gfp, &conf->bio_split);
		FUNC2(split, bio);
		FUNC0(conf);
		FUNC11(bio);
		FUNC24(conf);
		bio = split;
		r10_bio->master_bio = bio;
		r10_bio->sectors = max_sectors;
	}
	slot = r10_bio->read_slot;

	read_bio = FUNC3(bio, gfp, &mddev->bio_set);

	r10_bio->devs[slot].bio = read_bio;
	r10_bio->devs[slot].rdev = rdev;

	read_bio->bi_iter.bi_sector = r10_bio->devs[slot].addr +
		FUNC9(r10_bio, rdev);
	FUNC6(read_bio, rdev->bdev);
	read_bio->bi_end_io = raid10_end_read_request;
	FUNC7(read_bio, op, do_sync);
	if (FUNC22(FailFast, &rdev->flags) &&
	    FUNC22(R10BIO_FailFast, &r10_bio->state))
	        read_bio->bi_opf |= MD_FAILFAST;
	read_bio->bi_private = r10_bio;

	if (mddev->gendisk)
	        FUNC23(read_bio->bi_disk->queue,
	                              read_bio, FUNC10(mddev->gendisk),
	                              r10_bio->sector);
	FUNC11(read_bio);
	return;
}