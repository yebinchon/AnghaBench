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
struct TYPE_2__ {int /*<<< orphan*/  running_workload_num; } ;
struct intel_vgpu {int active; int /*<<< orphan*/  vgpu_lock; TYPE_1__ submission; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct intel_vgpu *vgpu)
{
	FUNC3(&vgpu->vgpu_lock);

	vgpu->active = false;

	if (FUNC0(&vgpu->submission.running_workload_num)) {
		FUNC4(&vgpu->vgpu_lock);
		FUNC1(vgpu);
		FUNC3(&vgpu->vgpu_lock);
	}

	FUNC2(vgpu);

	FUNC4(&vgpu->vgpu_lock);
}