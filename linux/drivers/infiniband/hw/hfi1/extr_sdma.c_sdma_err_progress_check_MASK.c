#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_3__ {scalar_t__ current_state; } ;
struct sdma_engine {scalar_t__ descq_head; scalar_t__ descq_tail; scalar_t__ progress_check_head; int /*<<< orphan*/  err_halt_worker; int /*<<< orphan*/  tail_lock; int /*<<< orphan*/  head_lock; TYPE_1__ state; TYPE_2__* dd; } ;
struct TYPE_4__ {unsigned int num_sdma; struct sdma_engine* per_sdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdma_engine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  err_progress_check_timer ; 
 struct sdma_engine* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sdma_engine* sde ; 
 int /*<<< orphan*/  sdma_event_e90_sw_halted ; 
 scalar_t__ sdma_state_s99_running ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	unsigned index;
	struct sdma_engine *sde = FUNC2(sde, t, err_progress_check_timer);

	FUNC1(sde->dd, "SDE progress check event\n");
	for (index = 0; index < sde->dd->num_sdma; index++) {
		struct sdma_engine *curr_sde = &sde->dd->per_sdma[index];
		unsigned long flags;

		/* check progress on each engine except the current one */
		if (curr_sde == sde)
			continue;
		/*
		 * We must lock interrupts when acquiring sde->lock,
		 * to avoid a deadlock if interrupt triggers and spins on
		 * the same lock on same CPU
		 */
		FUNC4(&curr_sde->tail_lock, flags);
		FUNC6(&curr_sde->head_lock);

		/* skip non-running queues */
		if (curr_sde->state.current_state != sdma_state_s99_running) {
			FUNC7(&curr_sde->head_lock);
			FUNC5(&curr_sde->tail_lock, flags);
			continue;
		}

		if ((curr_sde->descq_head != curr_sde->descq_tail) &&
		    (curr_sde->descq_head ==
				curr_sde->progress_check_head))
			FUNC0(curr_sde,
					     sdma_event_e90_sw_halted);
		FUNC7(&curr_sde->head_lock);
		FUNC5(&curr_sde->tail_lock, flags);
	}
	FUNC3(&sde->err_halt_worker);
}