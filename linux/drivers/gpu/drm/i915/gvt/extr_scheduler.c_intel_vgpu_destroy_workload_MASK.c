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
struct intel_vgpu_workload {scalar_t__ shadow_mm; int /*<<< orphan*/  wa_ctx; TYPE_1__* vgpu; } ;
struct intel_vgpu_submission {int /*<<< orphan*/  workloads; } ;
struct TYPE_2__ {struct intel_vgpu_submission submission; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct intel_vgpu_workload*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_vgpu_workload*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct intel_vgpu_workload *workload)
{
	struct intel_vgpu_submission *s = &workload->vgpu->submission;

	FUNC2(workload);
	FUNC3(&workload->wa_ctx);

	if (workload->shadow_mm)
		FUNC0(workload->shadow_mm);

	FUNC1(s->workloads, workload);
}