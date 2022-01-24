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
struct r1conf {int /*<<< orphan*/  resync_lock; int /*<<< orphan*/  nr_sync_pending; int /*<<< orphan*/  wait_barrier; int /*<<< orphan*/ * barrier; TYPE_1__* mddev; int /*<<< orphan*/ * nr_pending; int /*<<< orphan*/  array_frozen; int /*<<< orphan*/ * nr_waiting; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  recovery; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  MD_RECOVERY_INTR ; 
 scalar_t__ RESYNC_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct r1conf *conf, sector_t sector_nr)
{
	int idx = FUNC3(sector_nr);

	FUNC5(&conf->resync_lock);

	/* Wait until no block IO is waiting */
	FUNC8(conf->wait_barrier,
			    !FUNC2(&conf->nr_waiting[idx]),
			    conf->resync_lock);

	/* block any new IO from starting */
	FUNC1(&conf->barrier[idx]);
	/*
	 * In raise_barrier() we firstly increase conf->barrier[idx] then
	 * check conf->nr_pending[idx]. In _wait_barrier() we firstly
	 * increase conf->nr_pending[idx] then check conf->barrier[idx].
	 * A memory barrier here to make sure conf->nr_pending[idx] won't
	 * be fetched before conf->barrier[idx] is increased. Otherwise
	 * there will be a race between raise_barrier() and _wait_barrier().
	 */
	FUNC4();

	/* For these conditions we must wait:
	 * A: while the array is in frozen state
	 * B: while conf->nr_pending[idx] is not 0, meaning regular I/O
	 *    existing in corresponding I/O barrier bucket.
	 * C: while conf->barrier[idx] >= RESYNC_DEPTH, meaning reaches
	 *    max resync count which allowed on current I/O barrier bucket.
	 */
	FUNC8(conf->wait_barrier,
			    (!conf->array_frozen &&
			     !FUNC2(&conf->nr_pending[idx]) &&
			     FUNC2(&conf->barrier[idx]) < RESYNC_DEPTH) ||
				FUNC7(MD_RECOVERY_INTR, &conf->mddev->recovery),
			    conf->resync_lock);

	if (FUNC7(MD_RECOVERY_INTR, &conf->mddev->recovery)) {
		FUNC0(&conf->barrier[idx]);
		FUNC6(&conf->resync_lock);
		FUNC9(&conf->wait_barrier);
		return -EINTR;
	}

	FUNC1(&conf->nr_sync_pending);
	FUNC6(&conf->resync_lock);

	return 0;
}