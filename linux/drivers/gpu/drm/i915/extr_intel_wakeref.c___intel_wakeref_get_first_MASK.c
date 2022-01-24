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
struct intel_wakeref {int /*<<< orphan*/  count; int /*<<< orphan*/  mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get ) (struct intel_wakeref*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_wakeref*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_wakeref*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct intel_wakeref*) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(struct intel_wakeref *wf)
{
	/*
	 * Treat get/put as different subclasses, as we may need to run
	 * the put callback from under the shrinker and do not want to
	 * cross-contanimate that callback with any extra work performed
	 * upon acquiring the wakeref.
	 */
	FUNC3(&wf->mutex, SINGLE_DEPTH_NESTING);
	if (!FUNC2(&wf->count)) {
		int err;

		FUNC5(wf);

		err = wf->ops->get(wf);
		if (FUNC9(err)) {
			FUNC6(wf);
			FUNC4(&wf->mutex);
			return err;
		}

		FUNC7(); /* release wf->count */
	}
	FUNC1(&wf->count);
	FUNC4(&wf->mutex);

	FUNC0(FUNC2(&wf->count) <= 0);
	return 0;
}