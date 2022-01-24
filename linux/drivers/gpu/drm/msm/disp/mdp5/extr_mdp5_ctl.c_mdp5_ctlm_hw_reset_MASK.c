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
struct mdp5_ctl_manager {int nctl; struct mdp5_ctl* ctls; } ;
struct mdp5_ctl {int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mdp5_ctl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct mdp5_ctl_manager *ctl_mgr)
{
	unsigned long flags;
	int c;

	for (c = 0; c < ctl_mgr->nctl; c++) {
		struct mdp5_ctl *ctl = &ctl_mgr->ctls[c];

		FUNC2(&ctl->hw_lock, flags);
		FUNC1(ctl, FUNC0(ctl->id), 0);
		FUNC3(&ctl->hw_lock, flags);
	}
}