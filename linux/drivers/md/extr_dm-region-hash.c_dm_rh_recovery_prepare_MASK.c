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
struct dm_region_hash {int /*<<< orphan*/  context; int /*<<< orphan*/  (* wakeup_all_recovery_waiters ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  recovery_in_flight; int /*<<< orphan*/  recovery_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dm_region_hash*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct dm_region_hash *rh)
{
	/* Extra reference to avoid race with dm_rh_stop_recovery */
	FUNC3(&rh->recovery_in_flight);

	while (!FUNC4(&rh->recovery_count)) {
		FUNC3(&rh->recovery_in_flight);
		if (FUNC0(rh) <= 0) {
			FUNC1(&rh->recovery_in_flight);
			FUNC6(&rh->recovery_count);
			break;
		}
	}

	/* Drop the extra reference */
	if (FUNC2(&rh->recovery_in_flight))
		rh->wakeup_all_recovery_waiters(rh->context);
}