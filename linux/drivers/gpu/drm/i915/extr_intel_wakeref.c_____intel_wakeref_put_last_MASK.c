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
struct intel_wakeref {int /*<<< orphan*/  mutex; int /*<<< orphan*/  wakeref; TYPE_1__* ops; int /*<<< orphan*/  count; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* put ) (struct intel_wakeref*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_wakeref*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_wakeref*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct intel_wakeref *wf)
{
	if (!FUNC0(&wf->count))
		goto unlock;

	/* ops->put() must reschedule its own release on error/deferral */
	if (FUNC1(!wf->ops->put(wf))) {
		FUNC3(wf);
		FUNC5(&wf->wakeref);
	}

unlock:
	FUNC2(&wf->mutex);
}