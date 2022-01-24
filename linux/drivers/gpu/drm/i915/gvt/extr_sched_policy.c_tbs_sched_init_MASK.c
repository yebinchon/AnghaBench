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
struct intel_gvt_workload_scheduler {struct gvt_sched_data* sched_data; } ;
struct intel_gvt {struct intel_gvt_workload_scheduler scheduler; } ;
struct TYPE_2__ {int /*<<< orphan*/  function; } ;
struct gvt_sched_data {struct intel_gvt* gvt; int /*<<< orphan*/  period; TYPE_1__ timer; int /*<<< orphan*/  lru_runq_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GVT_DEFAULT_TIME_SLICE ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gvt_sched_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tbs_timer_fn ; 

__attribute__((used)) static int FUNC3(struct intel_gvt *gvt)
{
	struct intel_gvt_workload_scheduler *scheduler =
		&gvt->scheduler;

	struct gvt_sched_data *data;

	data = FUNC2(sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC0(&data->lru_runq_head);
	FUNC1(&data->timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
	data->timer.function = tbs_timer_fn;
	data->period = GVT_DEFAULT_TIME_SLICE;
	data->gvt = gvt;

	scheduler->sched_data = data;

	return 0;
}