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
struct r10conf {scalar_t__ barrier; int /*<<< orphan*/  resync_lock; int /*<<< orphan*/  nr_pending; int /*<<< orphan*/  wait_barrier; int /*<<< orphan*/  nr_waiting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RESYNC_DEPTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct r10conf *conf, int force)
{
	FUNC0(force && !conf->barrier);
	FUNC2(&conf->resync_lock);

	/* Wait until no block IO is waiting (unless 'force') */
	FUNC4(conf->wait_barrier, force || !conf->nr_waiting,
			    conf->resync_lock);

	/* block any new IO from starting */
	conf->barrier++;

	/* Now wait for all pending IO to complete */
	FUNC4(conf->wait_barrier,
			    !FUNC1(&conf->nr_pending) && conf->barrier < RESYNC_DEPTH,
			    conf->resync_lock);

	FUNC3(&conf->resync_lock);
}