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
struct TYPE_2__ {int /*<<< orphan*/  current_vgpu; struct gvt_sched_data* sched_data; } ;
struct intel_gvt {int /*<<< orphan*/  sched_lock; TYPE_1__ scheduler; int /*<<< orphan*/  service_request; } ;
struct gvt_sched_data {scalar_t__ expire_time; } ;
typedef  scalar_t__ ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  GVT_TS_BALANCE_PERIOD_MS ; 
 int /*<<< orphan*/  INTEL_GVT_REQUEST_EVENT_SCHED ; 
 int /*<<< orphan*/  INTEL_GVT_REQUEST_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct gvt_sched_data*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gvt_sched_data*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC9(struct intel_gvt *gvt)
{
	struct gvt_sched_data *sched_data = gvt->scheduler.sched_data;
	ktime_t cur_time;

	FUNC4(&gvt->sched_lock);
	cur_time = FUNC3();

	if (FUNC7(INTEL_GVT_REQUEST_SCHED,
				(void *)&gvt->service_request)) {
		if (cur_time >= sched_data->expire_time) {
			FUNC1(sched_data);
			sched_data->expire_time = FUNC2(
				cur_time, GVT_TS_BALANCE_PERIOD_MS);
		}
	}
	FUNC0(INTEL_GVT_REQUEST_EVENT_SCHED, (void *)&gvt->service_request);

	FUNC8(gvt->scheduler.current_vgpu, cur_time);
	FUNC6(sched_data);

	FUNC5(&gvt->sched_lock);
}