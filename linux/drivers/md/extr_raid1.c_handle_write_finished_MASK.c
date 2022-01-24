#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct r1conf {int raid_disks; TYPE_2__* mddev; int /*<<< orphan*/  wait_barrier; int /*<<< orphan*/  device_lock; int /*<<< orphan*/ * nr_queued; int /*<<< orphan*/  bio_end_io_list; TYPE_1__* mirrors; } ;
struct r1bio {int /*<<< orphan*/  state; int /*<<< orphan*/  sector; int /*<<< orphan*/  retry_list; int /*<<< orphan*/ ** bios; int /*<<< orphan*/  sectors; } ;
struct md_rdev {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  thread; } ;
struct TYPE_4__ {struct md_rdev* rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/ * IO_MADE_GOOD ; 
 int /*<<< orphan*/  R1BIO_Degraded ; 
 int /*<<< orphan*/  R1BIO_WriteError ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct r1bio*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct r1bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct md_rdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct md_rdev*,TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct r1conf *conf, struct r1bio *r1_bio)
{
	int m, idx;
	bool fail = false;

	for (m = 0; m < conf->raid_disks * 2 ; m++)
		if (r1_bio->bios[m] == IO_MADE_GOOD) {
			struct md_rdev *rdev = conf->mirrors[m].rdev;
			FUNC7(rdev,
					     r1_bio->sector,
					     r1_bio->sectors, 0);
			FUNC8(rdev, conf->mddev);
		} else if (r1_bio->bios[m] != NULL) {
			/* This drive got a write error.  We need to
			 * narrow down and record precise write
			 * errors.
			 */
			fail = true;
			if (!FUNC5(r1_bio, m)) {
				FUNC3(conf->mddev,
					 conf->mirrors[m].rdev);
				/* an I/O failed, we can't clear the bitmap */
				FUNC10(R1BIO_Degraded, &r1_bio->state);
			}
			FUNC8(conf->mirrors[m].rdev,
					 conf->mddev);
		}
	if (fail) {
		FUNC11(&conf->device_lock);
		FUNC2(&r1_bio->retry_list, &conf->bio_end_io_list);
		idx = FUNC9(r1_bio->sector);
		FUNC0(&conf->nr_queued[idx]);
		FUNC12(&conf->device_lock);
		/*
		 * In case freeze_array() is waiting for condition
		 * get_unqueued_pending() == extra to be true.
		 */
		FUNC14(&conf->wait_barrier);
		FUNC4(conf->mddev->thread);
	} else {
		if (FUNC13(R1BIO_WriteError, &r1_bio->state))
			FUNC1(r1_bio);
		FUNC6(r1_bio);
	}
}