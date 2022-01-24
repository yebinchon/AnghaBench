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
struct r1conf {int /*<<< orphan*/  resync_lock; int /*<<< orphan*/ * nr_waiting; int /*<<< orphan*/ * nr_pending; int /*<<< orphan*/ * barrier; int /*<<< orphan*/  array_frozen; int /*<<< orphan*/  wait_barrier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct r1conf *conf, int idx)
{
	/*
	 * We need to increase conf->nr_pending[idx] very early here,
	 * then raise_barrier() can be blocked when it waits for
	 * conf->nr_pending[idx] to be 0. Then we can avoid holding
	 * conf->resync_lock when there is no barrier raised in same
	 * barrier unit bucket. Also if the array is frozen, I/O
	 * should be blocked until array is unfrozen.
	 */
	FUNC2(&conf->nr_pending[idx]);
	/*
	 * In _wait_barrier() we firstly increase conf->nr_pending[idx], then
	 * check conf->barrier[idx]. In raise_barrier() we firstly increase
	 * conf->barrier[idx], then check conf->nr_pending[idx]. A memory
	 * barrier is necessary here to make sure conf->barrier[idx] won't be
	 * fetched before conf->nr_pending[idx] is increased. Otherwise there
	 * will be a race between _wait_barrier() and raise_barrier().
	 */
	FUNC4();

	/*
	 * Don't worry about checking two atomic_t variables at same time
	 * here. If during we check conf->barrier[idx], the array is
	 * frozen (conf->array_frozen is 1), and chonf->barrier[idx] is
	 * 0, it is safe to return and make the I/O continue. Because the
	 * array is frozen, all I/O returned here will eventually complete
	 * or be queued, no race will happen. See code comment in
	 * frozen_array().
	 */
	if (!FUNC0(conf->array_frozen) &&
	    !FUNC3(&conf->barrier[idx]))
		return;

	/*
	 * After holding conf->resync_lock, conf->nr_pending[idx]
	 * should be decreased before waiting for barrier to drop.
	 * Otherwise, we may encounter a race condition because
	 * raise_barrer() might be waiting for conf->nr_pending[idx]
	 * to be 0 at same time.
	 */
	FUNC5(&conf->resync_lock);
	FUNC2(&conf->nr_waiting[idx]);
	FUNC1(&conf->nr_pending[idx]);
	/*
	 * In case freeze_array() is waiting for
	 * get_unqueued_pending() == extra
	 */
	FUNC8(&conf->wait_barrier);
	/* Wait for the barrier in same barrier unit bucket to drop. */
	FUNC7(conf->wait_barrier,
			    !conf->array_frozen &&
			     !FUNC3(&conf->barrier[idx]),
			    conf->resync_lock);
	FUNC2(&conf->nr_pending[idx]);
	FUNC1(&conf->nr_waiting[idx]);
	FUNC6(&conf->resync_lock);
}