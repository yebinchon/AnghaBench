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
struct vgpu_sched_data {int pri_sched; int active; int /*<<< orphan*/  lru_list; int /*<<< orphan*/  pri_time; } ;
struct intel_vgpu {struct vgpu_sched_data* sched_data; TYPE_1__* gvt; } ;
struct gvt_sched_data {int /*<<< orphan*/  period; int /*<<< orphan*/  timer; int /*<<< orphan*/  lru_runq_head; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_4__ {struct gvt_sched_data* sched_data; } ;
struct TYPE_3__ {TYPE_2__ scheduler; } ;

/* Variables and functions */
 int /*<<< orphan*/  GVT_SCHED_VGPU_PRI_TIME ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct intel_vgpu *vgpu)
{
	struct gvt_sched_data *sched_data = vgpu->gvt->scheduler.sched_data;
	struct vgpu_sched_data *vgpu_data = vgpu->sched_data;
	ktime_t now;

	if (!FUNC7(&vgpu_data->lru_list))
		return;

	now = FUNC4();
	vgpu_data->pri_time = FUNC2(now,
					FUNC5(GVT_SCHED_VGPU_PRI_TIME, 0));
	vgpu_data->pri_sched = true;

	FUNC6(&vgpu_data->lru_list, &sched_data->lru_runq_head);

	if (!FUNC0(&sched_data->timer))
		FUNC1(&sched_data->timer, FUNC3(FUNC4(),
			sched_data->period), HRTIMER_MODE_ABS);
	vgpu_data->active = true;
}