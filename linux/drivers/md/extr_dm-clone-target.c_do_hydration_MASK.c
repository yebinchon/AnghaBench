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
struct clone {unsigned long nr_regions; unsigned long hydration_offset; int /*<<< orphan*/  hydrations_in_flight; int /*<<< orphan*/  hydration_threshold; int /*<<< orphan*/  flags; int /*<<< orphan*/  ios_in_flight; int /*<<< orphan*/  cmd; } ;
struct batch_info {scalar_t__ nr_batched_regions; int /*<<< orphan*/ * head; } ;

/* Variables and functions */
 scalar_t__ CM_READ_ONLY ; 
 int /*<<< orphan*/  DM_CLONE_HYDRATION_ENABLED ; 
 int /*<<< orphan*/  DM_CLONE_HYDRATION_SUSPENDED ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (struct clone*,unsigned long,struct batch_info*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct clone*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct clone*) ; 

__attribute__((used)) static void FUNC13(struct clone *clone)
{
	unsigned int current_volume;
	unsigned long offset, nr_regions = clone->nr_regions;

	struct batch_info batch = {
		.head = NULL,
		.nr_batched_regions = 0,
	};

	if (FUNC11(FUNC6(clone) >= CM_READ_ONLY))
		return;

	if (FUNC5(clone->cmd))
		return;

	/*
	 * Avoid race with device suspension.
	 */
	FUNC3(&clone->hydrations_in_flight);

	/*
	 * Make sure atomic_inc() is ordered before test_bit(), otherwise we
	 * might race with clone_postsuspend() and start a region hydration
	 * after the target has been suspended.
	 *
	 * This is paired with the smp_mb__after_atomic() in
	 * clone_postsuspend().
	 */
	FUNC9();

	offset = clone->hydration_offset;
	while (FUNC8(!FUNC10(DM_CLONE_HYDRATION_SUSPENDED, &clone->flags)) &&
	       !FUNC4(&clone->ios_in_flight) &&
	       FUNC10(DM_CLONE_HYDRATION_ENABLED, &clone->flags) &&
	       offset < nr_regions) {
		current_volume = FUNC4(&clone->hydrations_in_flight);
		current_volume += batch.nr_batched_regions;

		if (current_volume > FUNC0(clone->hydration_threshold))
			break;

		offset = FUNC1(clone, offset, &batch);
	}

	if (batch.head)
		FUNC7(batch.head, batch.nr_batched_regions);

	if (offset >= nr_regions)
		offset = 0;

	clone->hydration_offset = offset;

	if (FUNC2(&clone->hydrations_in_flight))
		FUNC12(clone);
}