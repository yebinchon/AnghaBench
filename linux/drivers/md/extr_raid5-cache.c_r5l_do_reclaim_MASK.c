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
struct r5l_log {scalar_t__ max_free_space; int /*<<< orphan*/  io_mutex; scalar_t__ last_checkpoint; int /*<<< orphan*/  io_list_lock; int /*<<< orphan*/  iounit_wait; TYPE_2__* rdev; int /*<<< orphan*/  finished_ios; int /*<<< orphan*/  flushing_ios; int /*<<< orphan*/  io_end_ios; int /*<<< orphan*/  running_ios; int /*<<< orphan*/  no_space_stripes; int /*<<< orphan*/  reclaim_target; } ;
struct r5conf {int dummy; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_4__ {TYPE_1__* mddev; } ;
struct TYPE_3__ {int /*<<< orphan*/  thread; struct r5conf* private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC5 (struct r5l_log*) ; 
 scalar_t__ FUNC6 (struct r5l_log*) ; 
 int /*<<< orphan*/  FUNC7 (struct r5l_log*) ; 
 int /*<<< orphan*/  FUNC8 (struct r5l_log*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct r5l_log *log)
{
	struct r5conf *conf = log->rdev->mddev->private;
	sector_t reclaim_target = FUNC12(&log->reclaim_target, 0);
	sector_t reclaimable;
	sector_t next_checkpoint;
	bool write_super;

	FUNC9(&log->io_list_lock);
	write_super = FUNC6(log) > log->max_free_space ||
		reclaim_target != 0 || !FUNC0(&log->no_space_stripes);
	/*
	 * move proper io_unit to reclaim list. We should not change the order.
	 * reclaimable/unreclaimable io_unit can be mixed in the list, we
	 * shouldn't reuse space of an unreclaimable io_unit
	 */
	while (1) {
		reclaimable = FUNC6(log);
		if (reclaimable >= reclaim_target ||
		    (FUNC0(&log->running_ios) &&
		     FUNC0(&log->io_end_ios) &&
		     FUNC0(&log->flushing_ios) &&
		     FUNC0(&log->finished_ios)))
			break;

		FUNC1(log->rdev->mddev->thread);
		FUNC11(log->iounit_wait,
				    FUNC6(log) > reclaimable,
				    log->io_list_lock);
	}

	next_checkpoint = FUNC4(conf);
	FUNC10(&log->io_list_lock);

	if (reclaimable == 0 || !write_super)
		return;

	/*
	 * write_super will flush cache of each raid disk. We must write super
	 * here, because the log area might be reused soon and we don't want to
	 * confuse recovery
	 */
	FUNC8(log, next_checkpoint);

	FUNC2(&log->io_mutex);
	log->last_checkpoint = next_checkpoint;
	FUNC5(log);
	FUNC3(&log->io_mutex);

	FUNC7(log);
}