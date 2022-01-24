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
struct dm_target {struct clone* private; } ;
struct clone {int /*<<< orphan*/  wq; int /*<<< orphan*/  hydrations_in_flight; int /*<<< orphan*/  hydration_stopped; int /*<<< orphan*/  flags; int /*<<< orphan*/  waker; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_CLONE_HYDRATION_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct clone*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct dm_target *ti)
{
	struct clone *clone = ti->private;

	/*
	 * To successfully suspend the device:
	 *
	 *	- We cancel the delayed work for periodic commits and wait for
	 *	  it to finish.
	 *
	 *	- We stop the background hydration, i.e. we prevent new region
	 *	  hydrations from starting.
	 *
	 *	- We wait for any in-flight hydrations to finish.
	 *
	 *	- We flush the workqueue.
	 *
	 *	- We commit the metadata.
	 */
	FUNC1(&clone->waker);

	FUNC4(DM_CLONE_HYDRATION_SUSPENDED, &clone->flags);

	/*
	 * Make sure set_bit() is ordered before atomic_read(), otherwise we
	 * might race with do_hydration() and miss some started region
	 * hydrations.
	 *
	 * This is paired with smp_mb__after_atomic() in do_hydration().
	 */
	FUNC5();

	FUNC6(clone->hydration_stopped, !FUNC0(&clone->hydrations_in_flight));
	FUNC3(clone->wq);

	(void) FUNC2(clone);
}