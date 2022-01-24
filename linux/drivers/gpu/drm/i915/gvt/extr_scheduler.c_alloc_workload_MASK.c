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
struct intel_vgpu_workload {struct intel_vgpu* vgpu; int /*<<< orphan*/  status; int /*<<< orphan*/  shadow_ctx_active; int /*<<< orphan*/  shadow_ctx_status_wq; int /*<<< orphan*/  shadow_bb; int /*<<< orphan*/  list; } ;
struct intel_vgpu_submission {int /*<<< orphan*/  workloads; } ;
struct intel_vgpu {struct intel_vgpu_submission submission; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct intel_vgpu_workload* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct intel_vgpu_workload* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct intel_vgpu_workload *
FUNC5(struct intel_vgpu *vgpu)
{
	struct intel_vgpu_submission *s = &vgpu->submission;
	struct intel_vgpu_workload *workload;

	workload = FUNC4(s->workloads, GFP_KERNEL);
	if (!workload)
		return FUNC0(-ENOMEM);

	FUNC1(&workload->list);
	FUNC1(&workload->shadow_bb);

	FUNC3(&workload->shadow_ctx_status_wq);
	FUNC2(&workload->shadow_ctx_active, 0);

	workload->status = -EINPROGRESS;
	workload->vgpu = vgpu;

	return workload;
}