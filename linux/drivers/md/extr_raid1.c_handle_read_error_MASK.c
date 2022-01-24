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
struct r1conf {struct mddev* mddev; TYPE_1__* mirrors; } ;
struct r1bio {size_t read_disk; int /*<<< orphan*/  sectors; scalar_t__ state; struct bio* master_bio; int /*<<< orphan*/  sector; struct bio** bios; } ;
struct mddev {scalar_t__ ro; } ;
struct md_rdev {int /*<<< orphan*/  flags; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct md_rdev* rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FailFast ; 
 struct bio* IO_BLOCKED ; 
 int /*<<< orphan*/  R1BIO_ReadError ; 
 int /*<<< orphan*/  FUNC0 (struct r1conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct r1conf*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r1conf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mddev*,struct bio*,int /*<<< orphan*/ ,struct r1bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct md_rdev*,struct mddev*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct r1conf*) ; 

__attribute__((used)) static void FUNC10(struct r1conf *conf, struct r1bio *r1_bio)
{
	struct mddev *mddev = conf->mddev;
	struct bio *bio;
	struct md_rdev *rdev;

	FUNC2(R1BIO_ReadError, &r1_bio->state);
	/* we got a read error. Maybe the drive is bad.  Maybe just
	 * the block and we can fix it.
	 * We freeze all other IO, and try reading the block from
	 * other devices.  When we find one, we re-write
	 * and check it that fixes the read error.
	 * This is all done synchronously while the array is
	 * frozen
	 */

	bio = r1_bio->bios[r1_bio->read_disk];
	FUNC1(bio);
	r1_bio->bios[r1_bio->read_disk] = NULL;

	rdev = conf->mirrors[r1_bio->read_disk].rdev;
	if (mddev->ro == 0
	    && !FUNC8(FailFast, &rdev->flags)) {
		FUNC4(conf, 1);
		FUNC3(conf, r1_bio->read_disk,
			       r1_bio->sector, r1_bio->sectors);
		FUNC9(conf);
	} else if (mddev->ro == 0 && FUNC8(FailFast, &rdev->flags)) {
		FUNC5(mddev, rdev);
	} else {
		r1_bio->bios[r1_bio->read_disk] = IO_BLOCKED;
	}

	FUNC7(rdev, conf->mddev);
	FUNC0(conf, r1_bio->sector);
	bio = r1_bio->master_bio;

	/* Reuse the old r1_bio so that the IO_BLOCKED settings are preserved */
	r1_bio->state = 0;
	FUNC6(mddev, bio, r1_bio->sectors, r1_bio);
}