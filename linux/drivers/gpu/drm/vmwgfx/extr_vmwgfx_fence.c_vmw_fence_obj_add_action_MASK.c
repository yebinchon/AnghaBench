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
struct list_head {int dummy; } ;
struct vmw_fence_obj {struct list_head seq_passed_actions; int /*<<< orphan*/  base; } ;
struct vmw_fence_manager {int goal_irq_on; int /*<<< orphan*/  goal_irq_mutex; int /*<<< orphan*/  dev_priv; int /*<<< orphan*/  lock; int /*<<< orphan*/ * pending_actions; } ;
struct vmw_fence_action {size_t type; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct vmw_fence_manager* FUNC2 (struct vmw_fence_obj*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct vmw_fence_obj*) ; 
 int /*<<< orphan*/  FUNC9 (struct vmw_fence_manager*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct vmw_fence_manager*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct vmw_fence_obj *fence,
			      struct vmw_fence_action *action)
{
	struct vmw_fence_manager *fman = FUNC2(fence);
	bool run_update = false;

	FUNC4(&fman->goal_irq_mutex);
	FUNC6(&fman->lock);

	fman->pending_actions[action->type]++;
	if (FUNC1(&fence->base)) {
		struct list_head action_list;

		FUNC0(&action_list);
		FUNC3(&action->head, &action_list);
		FUNC9(fman, &action_list);
	} else {
		FUNC3(&action->head, &fence->seq_passed_actions);

		/*
		 * This function may set fman::seqno_valid, so it must
		 * be run with the goal_irq_mutex held.
		 */
		run_update = FUNC8(fence);
	}

	FUNC7(&fman->lock);

	if (run_update) {
		if (!fman->goal_irq_on) {
			fman->goal_irq_on = true;
			FUNC11(fman->dev_priv);
		}
		FUNC10(fman);
	}
	FUNC5(&fman->goal_irq_mutex);

}