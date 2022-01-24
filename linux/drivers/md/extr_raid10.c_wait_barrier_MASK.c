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
struct r10conf {int /*<<< orphan*/  resync_lock; int /*<<< orphan*/  nr_pending; int /*<<< orphan*/  wait_barrier; int /*<<< orphan*/  nr_waiting; scalar_t__ barrier; int /*<<< orphan*/  mddev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * bio_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct r10conf *conf)
{
	FUNC4(&conf->resync_lock);
	if (conf->barrier) {
		conf->nr_waiting++;
		/* Wait for the barrier to drop.
		 * However if there are already pending
		 * requests (preventing the barrier from
		 * rising completely), and the
		 * pre-process bio queue isn't empty,
		 * then don't wait, as we need to empty
		 * that queue to get the nr_pending
		 * count down.
		 */
		FUNC3(conf->mddev, "wait barrier");
		FUNC6(conf->wait_barrier,
				    !conf->barrier ||
				    (FUNC1(&conf->nr_pending) &&
				     current->bio_list &&
				     (!FUNC2(&current->bio_list[0]) ||
				      !FUNC2(&current->bio_list[1]))),
				    conf->resync_lock);
		conf->nr_waiting--;
		if (!conf->nr_waiting)
			FUNC7(&conf->wait_barrier);
	}
	FUNC0(&conf->nr_pending);
	FUNC5(&conf->resync_lock);
}