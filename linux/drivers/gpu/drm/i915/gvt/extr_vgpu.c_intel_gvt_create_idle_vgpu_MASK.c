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
struct TYPE_2__ {int /*<<< orphan*/ * workload_q_head; } ;
struct intel_vgpu {int active; TYPE_1__ submission; int /*<<< orphan*/  vgpu_lock; struct intel_gvt* gvt; int /*<<< orphan*/  id; } ;
struct intel_gvt {int dummy; } ;
typedef  enum intel_engine_id { ____Placeholder_intel_engine_id } intel_engine_id ;

/* Variables and functions */
 int ENOMEM ; 
 struct intel_vgpu* FUNC0 (int) ; 
 int I915_NUM_ENGINES ; 
 int /*<<< orphan*/  IDLE_VGPU_IDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_vgpu*) ; 
 struct intel_vgpu* FUNC5 (int) ; 

struct intel_vgpu *FUNC6(struct intel_gvt *gvt)
{
	struct intel_vgpu *vgpu;
	enum intel_engine_id i;
	int ret;

	vgpu = FUNC5(sizeof(*vgpu));
	if (!vgpu)
		return FUNC0(-ENOMEM);

	vgpu->id = IDLE_VGPU_IDR;
	vgpu->gvt = gvt;
	FUNC3(&vgpu->vgpu_lock);

	for (i = 0; i < I915_NUM_ENGINES; i++)
		FUNC1(&vgpu->submission.workload_q_head[i]);

	ret = FUNC2(vgpu);
	if (ret)
		goto out_free_vgpu;

	vgpu->active = false;

	return vgpu;

out_free_vgpu:
	FUNC4(vgpu);
	return FUNC0(ret);
}