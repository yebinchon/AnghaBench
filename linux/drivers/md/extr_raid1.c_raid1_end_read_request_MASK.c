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
struct r1conf {int raid_disks; int /*<<< orphan*/  mddev; int /*<<< orphan*/  device_lock; TYPE_1__* mirrors; } ;
struct r1bio {size_t read_disk; int /*<<< orphan*/  state; scalar_t__ sector; TYPE_2__* mddev; } ;
struct md_rdev {int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;
struct bio {struct r1bio* bi_private; int /*<<< orphan*/  bi_status; } ;
struct TYPE_4__ {int degraded; struct r1conf* private; } ;
struct TYPE_3__ {struct md_rdev* rdev; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  FailFast ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  R1BIO_FailFast ; 
 int /*<<< orphan*/  R1BIO_ReadError ; 
 int /*<<< orphan*/  R1BIO_Uptodate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct md_rdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (size_t,struct r1bio*) ; 

__attribute__((used)) static void FUNC11(struct bio *bio)
{
	int uptodate = !bio->bi_status;
	struct r1bio *r1_bio = bio->bi_private;
	struct r1conf *conf = r1_bio->mddev->private;
	struct md_rdev *rdev = conf->mirrors[r1_bio->read_disk].rdev;

	/*
	 * this branch is our 'one mirror IO has finished' event handler:
	 */
	FUNC10(r1_bio->read_disk, r1_bio);

	if (uptodate)
		FUNC6(R1BIO_Uptodate, &r1_bio->state);
	else if (FUNC9(FailFast, &rdev->flags) &&
		 FUNC9(R1BIO_FailFast, &r1_bio->state))
		/* This was a fail-fast read so we definitely
		 * want to retry */
		;
	else {
		/* If all other devices have failed, we want to return
		 * the error upwards rather than fail the last device.
		 * Here we redefine "uptodate" to mean "Don't want to retry"
		 */
		unsigned long flags;
		FUNC7(&conf->device_lock, flags);
		if (r1_bio->mddev->degraded == conf->raid_disks ||
		    (r1_bio->mddev->degraded == conf->raid_disks-1 &&
		     FUNC9(In_sync, &rdev->flags)))
			uptodate = 1;
		FUNC8(&conf->device_lock, flags);
	}

	if (uptodate) {
		FUNC3(r1_bio);
		FUNC4(rdev, conf->mddev);
	} else {
		/*
		 * oops, read error:
		 */
		char b[BDEVNAME_SIZE];
		FUNC2("md/raid1:%s: %s: rescheduling sector %llu\n",
				   FUNC1(conf->mddev),
				   FUNC0(rdev->bdev, b),
				   (unsigned long long)r1_bio->sector);
		FUNC6(R1BIO_ReadError, &r1_bio->state);
		FUNC5(r1_bio);
		/* don't drop the reference on read_disk yet */
	}
}