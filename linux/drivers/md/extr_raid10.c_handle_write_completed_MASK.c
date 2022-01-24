#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct r10conf {int copies; TYPE_3__* mddev; int /*<<< orphan*/  wait_barrier; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  nr_queued; int /*<<< orphan*/  bio_end_io_list; TYPE_1__* mirrors; } ;
struct r10bio {int /*<<< orphan*/  state; int /*<<< orphan*/  retry_list; int /*<<< orphan*/  sectors; TYPE_2__* devs; } ;
struct md_rdev {int dummy; } ;
struct bio {scalar_t__ bi_status; int /*<<< orphan*/ * bi_end_io; } ;
struct TYPE_7__ {int /*<<< orphan*/  thread; } ;
struct TYPE_6__ {int devnum; int /*<<< orphan*/  addr; struct bio* repl_bio; struct bio* bio; } ;
struct TYPE_5__ {struct md_rdev* replacement; struct md_rdev* rdev; } ;

/* Variables and functions */
 struct bio* IO_MADE_GOOD ; 
 int /*<<< orphan*/  R10BIO_Degraded ; 
 int /*<<< orphan*/  R10BIO_IsRecover ; 
 int /*<<< orphan*/  R10BIO_IsSync ; 
 int /*<<< orphan*/  R10BIO_WriteError ; 
 int /*<<< orphan*/  FUNC0 (struct r10bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r10bio*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct r10bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct r10bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct md_rdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct md_rdev*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct md_rdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct r10conf *conf, struct r10bio *r10_bio)
{
	/* Some sort of write request has finished and it
	 * succeeded in writing where we thought there was a
	 * bad block.  So forget the bad block.
	 * Or possibly if failed and we need to record
	 * a bad block.
	 */
	int m;
	struct md_rdev *rdev;

	if (FUNC13(R10BIO_IsSync, &r10_bio->state) ||
	    FUNC13(R10BIO_IsRecover, &r10_bio->state)) {
		for (m = 0; m < conf->copies; m++) {
			int dev = r10_bio->devs[m].devnum;
			rdev = conf->mirrors[dev].rdev;
			if (r10_bio->devs[m].bio == NULL ||
				r10_bio->devs[m].bio->bi_end_io == NULL)
				continue;
			if (!r10_bio->devs[m].bio->bi_status) {
				FUNC7(
					rdev,
					r10_bio->devs[m].addr,
					r10_bio->sectors, 0);
			} else {
				if (!FUNC9(
					    rdev,
					    r10_bio->devs[m].addr,
					    r10_bio->sectors, 0))
					FUNC2(conf->mddev, rdev);
			}
			rdev = conf->mirrors[dev].replacement;
			if (r10_bio->devs[m].repl_bio == NULL ||
				r10_bio->devs[m].repl_bio->bi_end_io == NULL)
				continue;

			if (!r10_bio->devs[m].repl_bio->bi_status) {
				FUNC7(
					rdev,
					r10_bio->devs[m].addr,
					r10_bio->sectors, 0);
			} else {
				if (!FUNC9(
					    rdev,
					    r10_bio->devs[m].addr,
					    r10_bio->sectors, 0))
					FUNC2(conf->mddev, rdev);
			}
		}
		FUNC5(r10_bio);
	} else {
		bool fail = false;
		for (m = 0; m < conf->copies; m++) {
			int dev = r10_bio->devs[m].devnum;
			struct bio *bio = r10_bio->devs[m].bio;
			rdev = conf->mirrors[dev].rdev;
			if (bio == IO_MADE_GOOD) {
				FUNC7(
					rdev,
					r10_bio->devs[m].addr,
					r10_bio->sectors, 0);
				FUNC8(rdev, conf->mddev);
			} else if (bio != NULL && bio->bi_status) {
				fail = true;
				if (!FUNC4(r10_bio, m)) {
					FUNC2(conf->mddev, rdev);
					FUNC10(R10BIO_Degraded,
						&r10_bio->state);
				}
				FUNC8(rdev, conf->mddev);
			}
			bio = r10_bio->devs[m].repl_bio;
			rdev = conf->mirrors[dev].replacement;
			if (rdev && bio == IO_MADE_GOOD) {
				FUNC7(
					rdev,
					r10_bio->devs[m].addr,
					r10_bio->sectors, 0);
				FUNC8(rdev, conf->mddev);
			}
		}
		if (fail) {
			FUNC11(&conf->device_lock);
			FUNC1(&r10_bio->retry_list, &conf->bio_end_io_list);
			conf->nr_queued++;
			FUNC12(&conf->device_lock);
			/*
			 * In case freeze_array() is waiting for condition
			 * nr_pending == nr_queued + extra to be true.
			 */
			FUNC14(&conf->wait_barrier);
			FUNC3(conf->mddev->thread);
		} else {
			if (FUNC13(R10BIO_WriteError,
				     &r10_bio->state))
				FUNC0(r10_bio);
			FUNC6(r10_bio);
		}
	}
}