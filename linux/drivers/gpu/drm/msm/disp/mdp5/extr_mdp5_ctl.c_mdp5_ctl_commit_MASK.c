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
typedef  int u32 ;
struct mdp5_pipeline {int dummy; } ;
struct mdp5_ctl_manager {int flush_hw_mask; } ;
struct mdp5_ctl {int id; int pending_ctl_trigger; int flush_mask; int /*<<< orphan*/  hw_lock; struct mdp5_ctl_manager* ctlm; } ;

/* Variables and functions */
 int MDP5_CTL_FLUSH_CTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mdp5_ctl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mdp5_ctl*,int*,int*) ; 
 int FUNC4 (struct mdp5_ctl*,struct mdp5_pipeline*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mdp5_ctl*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (struct mdp5_ctl*,struct mdp5_pipeline*) ; 

u32 FUNC9(struct mdp5_ctl *ctl,
		    struct mdp5_pipeline *pipeline,
		    u32 flush_mask, bool start)
{
	struct mdp5_ctl_manager *ctl_mgr = ctl->ctlm;
	unsigned long flags;
	u32 flush_id = ctl->id;
	u32 curr_ctl_flush_mask;

	FUNC1("flush_mask=%x, trigger=%x", flush_mask, ctl->pending_ctl_trigger);

	if (ctl->pending_ctl_trigger & flush_mask) {
		flush_mask |= MDP5_CTL_FLUSH_CTL;
		ctl->pending_ctl_trigger = 0;
	}

	flush_mask |= FUNC4(ctl, pipeline, flush_mask);

	flush_mask &= ctl_mgr->flush_hw_mask;

	curr_ctl_flush_mask = flush_mask;

	FUNC3(ctl, &flush_mask, &flush_id);

	if (!start) {
		ctl->flush_mask |= flush_mask;
		return curr_ctl_flush_mask;
	} else {
		flush_mask |= ctl->flush_mask;
		ctl->flush_mask = 0;
	}

	if (flush_mask) {
		FUNC6(&ctl->hw_lock, flags);
		FUNC2(ctl, FUNC0(flush_id), flush_mask);
		FUNC7(&ctl->hw_lock, flags);
	}

	if (FUNC8(ctl, pipeline)) {
		FUNC5(ctl);
	}

	return curr_ctl_flush_mask;
}