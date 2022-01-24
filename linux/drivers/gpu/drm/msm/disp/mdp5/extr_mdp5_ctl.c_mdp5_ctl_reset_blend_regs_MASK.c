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
struct mdp5_ctl_manager {int nlm; } ;
struct mdp5_ctl {int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  id; struct mdp5_ctl_manager* ctlm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mdp5_ctl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct mdp5_ctl *ctl)
{
	unsigned long flags;
	struct mdp5_ctl_manager *ctl_mgr = ctl->ctlm;
	int i;

	FUNC3(&ctl->hw_lock, flags);

	for (i = 0; i < ctl_mgr->nlm; i++) {
		FUNC2(ctl, FUNC1(ctl->id, i), 0x0);
		FUNC2(ctl, FUNC0(ctl->id, i), 0x0);
	}

	FUNC4(&ctl->hw_lock, flags);
}