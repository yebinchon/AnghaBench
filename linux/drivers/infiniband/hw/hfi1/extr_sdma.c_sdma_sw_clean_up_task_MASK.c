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
struct sdma_engine {int /*<<< orphan*/  tail_lock; int /*<<< orphan*/  head_lock; scalar_t__* head_dma; int /*<<< orphan*/  desc_avail; scalar_t__ descq_head; scalar_t__ descq_tail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdma_engine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdma_engine*) ; 
 int /*<<< orphan*/  sdma_event_e40_sw_cleaned ; 
 int /*<<< orphan*/  FUNC2 (struct sdma_engine*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdma_engine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(unsigned long opaque)
{
	struct sdma_engine *sde = (struct sdma_engine *)opaque;
	unsigned long flags;

	FUNC4(&sde->tail_lock, flags);
	FUNC6(&sde->head_lock);

	/*
	 * At this point, the following should always be true:
	 * - We are halted, so no more descriptors are getting retired.
	 * - We are not running, so no one is submitting new work.
	 * - Only we can send the e40_sw_cleaned, so we can't start
	 *   running again until we say so.  So, the active list and
	 *   descq are ours to play with.
	 */

	/*
	 * In the error clean up sequence, software clean must be called
	 * before the hardware clean so we can use the hardware head in
	 * the progress routine.  A hardware clean or SPC unfreeze will
	 * reset the hardware head.
	 *
	 * Process all retired requests. The progress routine will use the
	 * latest physical hardware head - we are not running so speed does
	 * not matter.
	 */
	FUNC3(sde, 0);

	FUNC2(sde);

	/*
	 * Reset our notion of head and tail.
	 * Note that the HW registers have been reset via an earlier
	 * clean up.
	 */
	sde->descq_tail = 0;
	sde->descq_head = 0;
	sde->desc_avail = FUNC1(sde);
	*sde->head_dma = 0;

	FUNC0(sde, sdma_event_e40_sw_cleaned);

	FUNC7(&sde->head_lock);
	FUNC5(&sde->tail_lock, flags);
}