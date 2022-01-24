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
struct vgpu_sched_data {void* sched_in_time; void* left_ts; int /*<<< orphan*/  sched_time; } ;
struct intel_vgpu {struct vgpu_sched_data* sched_data; TYPE_1__* gvt; } ;
typedef  void* ktime_t ;
struct TYPE_2__ {struct intel_vgpu* idle_vgpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC1 (void*,void*) ; 

__attribute__((used)) static void FUNC2(struct intel_vgpu *vgpu, ktime_t cur_time)
{
	ktime_t delta_ts;
	struct vgpu_sched_data *vgpu_data;

	if (!vgpu || vgpu == vgpu->gvt->idle_vgpu)
		return;

	vgpu_data = vgpu->sched_data;
	delta_ts = FUNC1(cur_time, vgpu_data->sched_in_time);
	vgpu_data->sched_time = FUNC0(vgpu_data->sched_time, delta_ts);
	vgpu_data->left_ts = FUNC1(vgpu_data->left_ts, delta_ts);
	vgpu_data->sched_in_time = cur_time;
}