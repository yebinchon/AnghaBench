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
struct i40iw_cm_core {void* disconn_wq; void* event_wq; int /*<<< orphan*/  apbvt_lock; int /*<<< orphan*/  listen_list_lock; int /*<<< orphan*/  ht_lock; int /*<<< orphan*/  tcp_timer; int /*<<< orphan*/  listen_nodes; int /*<<< orphan*/  non_accelerated_list; int /*<<< orphan*/  accelerated_list; int /*<<< orphan*/ * dev; struct i40iw_device* iwdev; } ;
struct i40iw_device {struct i40iw_cm_core cm_core; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_cm_core*) ; 
 int /*<<< orphan*/  i40iw_cm_timer_tick ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct i40iw_device *iwdev)
{
	struct i40iw_cm_core *cm_core = &iwdev->cm_core;

	cm_core->iwdev = iwdev;
	cm_core->dev = &iwdev->sc_dev;

	FUNC0(&cm_core->accelerated_list);
	FUNC0(&cm_core->non_accelerated_list);
	FUNC0(&cm_core->listen_nodes);

	FUNC4(&cm_core->tcp_timer, i40iw_cm_timer_tick, 0);

	FUNC3(&cm_core->ht_lock);
	FUNC3(&cm_core->listen_list_lock);
	FUNC3(&cm_core->apbvt_lock);

	cm_core->event_wq = FUNC1("iwewq",
						    WQ_MEM_RECLAIM);
	if (!cm_core->event_wq)
		goto error;

	cm_core->disconn_wq = FUNC1("iwdwq",
						      WQ_MEM_RECLAIM);
	if (!cm_core->disconn_wq)
		goto error;

	return 0;
error:
	FUNC2(&iwdev->cm_core);

	return -ENOMEM;
}