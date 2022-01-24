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
struct TYPE_2__ {scalar_t__ head; } ;
struct r1conf {int /*<<< orphan*/  device_lock; scalar_t__ pending_count; TYPE_1__ pending_bio_list; } ;
struct blk_plug {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bio* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC3 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC4 (struct r1conf*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct r1conf *conf)
{
	/* Any writes that have been queued but are awaiting
	 * bitmap updates get flushed here.
	 */
	FUNC5(&conf->device_lock);

	if (conf->pending_bio_list.head) {
		struct blk_plug plug;
		struct bio *bio;

		bio = FUNC1(&conf->pending_bio_list);
		conf->pending_count = 0;
		FUNC6(&conf->device_lock);

		/*
		 * As this is called in a wait_event() loop (see freeze_array),
		 * current->state might be TASK_UNINTERRUPTIBLE which will
		 * cause a warning when we prepare to wait again.  As it is
		 * rare that this path is taken, it is perfectly safe to force
		 * us to go around the wait_event() loop again, so the warning
		 * is a false-positive.  Silence the warning by resetting
		 * thread state
		 */
		FUNC0(TASK_RUNNING);
		FUNC3(&plug);
		FUNC4(conf, bio);
		FUNC2(&plug);
	} else
		FUNC6(&conf->device_lock);
}