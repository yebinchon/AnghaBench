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
struct i40iw_cm_core {scalar_t__ disconn_wq; scalar_t__ event_wq; int /*<<< orphan*/  ht_lock; int /*<<< orphan*/  tcp_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct i40iw_cm_core *cm_core)
{
	unsigned long flags;

	if (!cm_core)
		return;

	FUNC2(&cm_core->ht_lock, flags);
	if (FUNC4(&cm_core->tcp_timer))
		FUNC0(&cm_core->tcp_timer);
	FUNC3(&cm_core->ht_lock, flags);

	if (cm_core->event_wq)
		FUNC1(cm_core->event_wq);
	if (cm_core->disconn_wq)
		FUNC1(cm_core->disconn_wq);
}