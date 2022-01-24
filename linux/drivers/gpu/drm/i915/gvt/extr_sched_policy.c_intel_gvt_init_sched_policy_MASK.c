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
struct TYPE_3__ {TYPE_2__* sched_ops; } ;
struct intel_gvt {int /*<<< orphan*/  sched_lock; TYPE_1__ scheduler; } ;
struct TYPE_4__ {int (* init ) (struct intel_gvt*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct intel_gvt*) ; 
 TYPE_2__ tbs_schedule_ops ; 

int FUNC3(struct intel_gvt *gvt)
{
	int ret;

	FUNC0(&gvt->sched_lock);
	gvt->scheduler.sched_ops = &tbs_schedule_ops;
	ret = gvt->scheduler.sched_ops->init(gvt);
	FUNC1(&gvt->sched_lock);

	return ret;
}