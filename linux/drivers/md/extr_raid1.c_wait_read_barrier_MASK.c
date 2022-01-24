#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct r1conf {int /*<<< orphan*/  resync_lock; int /*<<< orphan*/ * nr_waiting; int /*<<< orphan*/ * nr_pending; int /*<<< orphan*/  array_frozen; int /*<<< orphan*/  wait_barrier; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct r1conf *conf, sector_t sector_nr)
{
	int idx = FUNC3(sector_nr);

	/*
	 * Very similar to _wait_barrier(). The difference is, for read
	 * I/O we don't need wait for sync I/O, but if the whole array
	 * is frozen, the read I/O still has to wait until the array is
	 * unfrozen. Since there is no ordering requirement with
	 * conf->barrier[idx] here, memory barrier is unnecessary as well.
	 */
	FUNC2(&conf->nr_pending[idx]);

	if (!FUNC0(conf->array_frozen))
		return;

	FUNC4(&conf->resync_lock);
	FUNC2(&conf->nr_waiting[idx]);
	FUNC1(&conf->nr_pending[idx]);
	/*
	 * In case freeze_array() is waiting for
	 * get_unqueued_pending() == extra
	 */
	FUNC7(&conf->wait_barrier);
	/* Wait for array to be unfrozen */
	FUNC6(conf->wait_barrier,
			    !conf->array_frozen,
			    conf->resync_lock);
	FUNC2(&conf->nr_pending[idx]);
	FUNC1(&conf->nr_waiting[idx]);
	FUNC5(&conf->resync_lock);
}