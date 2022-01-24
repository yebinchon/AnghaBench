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
struct intel_vgpu_workload {struct intel_vgpu* vgpu; } ;
struct intel_vgpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct intel_vgpu_workload*) ; 
 int FUNC2 (struct intel_vgpu_workload*) ; 

int FUNC3(struct intel_vgpu_workload *workload)
{
	int ret;
	struct intel_vgpu *vgpu = workload->vgpu;

	ret = FUNC2(workload);
	if (ret) {
		FUNC0("fail to shadow workload ring_buffer\n");
		return ret;
	}

	ret = FUNC1(workload);
	if (ret) {
		FUNC0("scan workload error\n");
		return ret;
	}
	return 0;
}