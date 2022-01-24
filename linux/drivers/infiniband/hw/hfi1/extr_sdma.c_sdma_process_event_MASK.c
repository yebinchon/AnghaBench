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
struct TYPE_2__ {scalar_t__ current_state; } ;
struct sdma_engine {int /*<<< orphan*/  tail_lock; int /*<<< orphan*/  head_lock; TYPE_1__ state; } ;
typedef  enum sdma_events { ____Placeholder_sdma_events } sdma_events ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdma_engine*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sdma_engine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdma_engine*) ; 
 scalar_t__ sdma_state_s99_running ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct sdma_engine *sde, enum sdma_events event)
{
	unsigned long flags;

	FUNC3(&sde->tail_lock, flags);
	FUNC5(&sde->head_lock);

	FUNC0(sde, event);

	if (sde->state.current_state == sdma_state_s99_running)
		FUNC1(sde, FUNC2(sde));

	FUNC6(&sde->head_lock);
	FUNC4(&sde->tail_lock, flags);
}