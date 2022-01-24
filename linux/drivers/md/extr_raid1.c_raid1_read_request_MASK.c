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
struct raid1_info {TYPE_3__* rdev; } ;
struct r1conf {int /*<<< orphan*/  bio_split; struct raid1_info* mirrors; } ;
struct r1bio {size_t read_disk; int sectors; scalar_t__ sector; int /*<<< orphan*/  state; struct bio** bios; struct bio* master_bio; } ;
struct mddev {scalar_t__ gendisk; int /*<<< orphan*/  bio_set; struct bitmap* bitmap; struct r1conf* private; } ;
struct md_rdev {int /*<<< orphan*/  bdev; } ;
struct bitmap {int /*<<< orphan*/  behind_writes; int /*<<< orphan*/  behind_wait; } ;
struct TYPE_4__ {scalar_t__ bi_sector; } ;
struct bio {unsigned long bi_opf; TYPE_2__* bi_disk; struct r1bio* bi_private; int /*<<< orphan*/  bi_end_io; TYPE_1__ bi_iter; } ;
typedef  int gfp_t ;
struct TYPE_6__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  bdev; scalar_t__ data_offset; } ;
struct TYPE_5__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  FailFast ; 
 int GFP_NOIO ; 
 unsigned long MD_FAILFAST ; 
 int /*<<< orphan*/  R1BIO_FailFast ; 
 unsigned long REQ_SYNC ; 
 int /*<<< orphan*/  WriteMostly ; 
 int __GFP_HIGH ; 
 struct r1bio* FUNC0 (struct mddev*,struct bio*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,struct bio*) ; 
 struct bio* FUNC4 (struct bio*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct bio*) ; 
 int FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*,int const,unsigned long const) ; 
 struct bio* FUNC9 (struct bio*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct bio*) ; 
 int /*<<< orphan*/  FUNC12 (struct r1bio*,struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC13 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  raid1_end_read_request ; 
 int /*<<< orphan*/  FUNC16 (struct mddev*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct r1bio*) ; 
 struct md_rdev* FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int FUNC21 (struct r1conf*,struct r1bio*,int*) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (struct r1conf*,scalar_t__) ; 

__attribute__((used)) static void FUNC27(struct mddev *mddev, struct bio *bio,
			       int max_read_sectors, struct r1bio *r1_bio)
{
	struct r1conf *conf = mddev->private;
	struct raid1_info *mirror;
	struct bio *read_bio;
	struct bitmap *bitmap = mddev->bitmap;
	const int op = FUNC5(bio);
	const unsigned long do_sync = (bio->bi_opf & REQ_SYNC);
	int max_sectors;
	int rdisk;
	bool print_msg = !!r1_bio;
	char b[BDEVNAME_SIZE];

	/*
	 * If r1_bio is set, we are blocking the raid1d thread
	 * so there is a tiny risk of deadlock.  So ask for
	 * emergency memory if needed.
	 */
	gfp_t gfp = r1_bio ? (GFP_NOIO | __GFP_HIGH) : GFP_NOIO;

	if (print_msg) {
		/* Need to get the block device name carefully */
		struct md_rdev *rdev;
		FUNC19();
		rdev = FUNC18(conf->mirrors[r1_bio->read_disk].rdev);
		if (rdev)
			FUNC2(rdev->bdev, b);
		else
			FUNC22(b, "???");
		FUNC20();
	}

	/*
	 * Still need barrier for READ in case that whole
	 * array is frozen.
	 */
	FUNC26(conf, bio->bi_iter.bi_sector);

	if (!r1_bio)
		r1_bio = FUNC0(mddev, bio);
	else
		FUNC12(r1_bio, mddev, bio);
	r1_bio->sectors = max_read_sectors;

	/*
	 * make_request() can abort the operation when read-ahead is being
	 * used and no empty request is available.
	 */
	rdisk = FUNC21(conf, r1_bio, &max_sectors);

	if (rdisk < 0) {
		/* couldn't find anywhere to read from */
		if (print_msg) {
			FUNC14("md/raid1:%s: %s: unrecoverable I/O read error for block %llu\n",
					    FUNC13(mddev),
					    b,
					    (unsigned long long)r1_bio->sector);
		}
		FUNC17(r1_bio);
		return;
	}
	mirror = conf->mirrors + rdisk;

	if (print_msg)
		FUNC15("md/raid1:%s: redirecting sector %llu to other mirror: %s\n",
				    FUNC13(mddev),
				    (unsigned long long)r1_bio->sector,
				    FUNC2(mirror->rdev->bdev, b));

	if (FUNC23(WriteMostly, &mirror->rdev->flags) &&
	    bitmap) {
		/*
		 * Reading from a write-mostly device must take care not to
		 * over-take any writes that are 'behind'
		 */
		FUNC16(mddev, "wait behind writes");
		FUNC25(bitmap->behind_wait,
			   FUNC1(&bitmap->behind_writes) == 0);
	}

	if (max_sectors < FUNC6(bio)) {
		struct bio *split = FUNC9(bio, max_sectors,
					      gfp, &conf->bio_split);
		FUNC3(split, bio);
		FUNC11(bio);
		bio = split;
		r1_bio->master_bio = bio;
		r1_bio->sectors = max_sectors;
	}

	r1_bio->read_disk = rdisk;

	read_bio = FUNC4(bio, gfp, &mddev->bio_set);

	r1_bio->bios[rdisk] = read_bio;

	read_bio->bi_iter.bi_sector = r1_bio->sector +
		mirror->rdev->data_offset;
	FUNC7(read_bio, mirror->rdev->bdev);
	read_bio->bi_end_io = raid1_end_read_request;
	FUNC8(read_bio, op, do_sync);
	if (FUNC23(FailFast, &mirror->rdev->flags) &&
	    FUNC23(R1BIO_FailFast, &r1_bio->state))
	        read_bio->bi_opf |= MD_FAILFAST;
	read_bio->bi_private = r1_bio;

	if (mddev->gendisk)
	        FUNC24(read_bio->bi_disk->queue, read_bio,
				FUNC10(mddev->gendisk), r1_bio->sector);

	FUNC11(read_bio);
}