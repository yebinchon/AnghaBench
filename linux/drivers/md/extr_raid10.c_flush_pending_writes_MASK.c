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
struct TYPE_6__ {scalar_t__ head; } ;
struct r10conf {int /*<<< orphan*/  device_lock; int /*<<< orphan*/  wait_barrier; TYPE_1__* mddev; scalar_t__ pending_count; TYPE_3__ pending_bio_list; } ;
struct md_rdev {int /*<<< orphan*/  flags; int /*<<< orphan*/  bdev; } ;
struct blk_plug {int dummy; } ;
struct bio {TYPE_2__* bi_disk; struct bio* bi_next; } ;
struct TYPE_5__ {int /*<<< orphan*/  queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 scalar_t__ REQ_OP_DISCARD ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 struct bio* FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct r10conf *conf)
{
	/* Any writes that have been queued but are awaiting
	 * bitmap updates get flushed here.
	 */
	FUNC11(&conf->device_lock);

	if (conf->pending_bio_list.head) {
		struct blk_plug plug;
		struct bio *bio;

		bio = FUNC3(&conf->pending_bio_list);
		conf->pending_count = 0;
		FUNC12(&conf->device_lock);

		/*
		 * As this is called in a wait_event() loop (see freeze_array),
		 * current->state might be TASK_UNINTERRUPTIBLE which will
		 * cause a warning when we prepare to wait again.  As it is
		 * rare that this path is taken, it is perfectly safe to force
		 * us to go around the wait_event() loop again, so the warning
		 * is a false-positive. Silence the warning by resetting
		 * thread state
		 */
		FUNC0(TASK_RUNNING);

		FUNC8(&plug);
		/* flush any pending bitmap writes to disk
		 * before proceeding w/ I/O */
		FUNC10(conf->mddev->bitmap);
		FUNC15(&conf->wait_barrier);

		while (bio) { /* submit pending writes */
			struct bio *next = bio->bi_next;
			struct md_rdev *rdev = (void*)bio->bi_disk;
			bio->bi_next = NULL;
			FUNC5(bio, rdev->bdev);
			if (FUNC13(Faulty, &rdev->flags)) {
				FUNC2(bio);
			} else if (FUNC14((FUNC4(bio) ==  REQ_OP_DISCARD) &&
					    !FUNC7(bio->bi_disk->queue)))
				/* Just ignore it */
				FUNC1(bio);
			else
				FUNC9(bio);
			bio = next;
		}
		FUNC6(&plug);
	} else
		FUNC12(&conf->device_lock);
}