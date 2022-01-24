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
struct intel_wakeref {int /*<<< orphan*/  work; int /*<<< orphan*/  mutex; TYPE_1__* ops; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int INTEL_WAKEREF_PUT_ASYNC ; 
 int /*<<< orphan*/  FUNC1 (struct intel_wakeref*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct intel_wakeref *wf)
{
	FUNC0(FUNC4(&wf->work));

	/* Assume we are not in process context and so cannot sleep. */
	if (wf->ops->flags & INTEL_WAKEREF_PUT_ASYNC ||
	    !FUNC2(&wf->mutex)) {
		FUNC3(&wf->work);
		return;
	}

	FUNC1(wf);
}