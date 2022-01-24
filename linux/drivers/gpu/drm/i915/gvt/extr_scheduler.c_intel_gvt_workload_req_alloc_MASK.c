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
struct intel_vgpu_workload {size_t ring_id; int /*<<< orphan*/  req; struct intel_vgpu* vgpu; } ;
struct intel_vgpu_submission {int /*<<< orphan*/ * shadow; } ;
struct intel_vgpu {TYPE_2__* gvt; struct intel_vgpu_submission submission; } ;
struct i915_request {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct TYPE_4__ {struct drm_i915_private* dev_priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct i915_request*) ; 
 int FUNC1 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct i915_request* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct intel_vgpu_workload *workload)
{
	struct intel_vgpu *vgpu = workload->vgpu;
	struct intel_vgpu_submission *s = &vgpu->submission;
	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
	struct i915_request *rq;

	FUNC5(&dev_priv->drm.struct_mutex);

	if (workload->req)
		return 0;

	rq = FUNC3(s->shadow[workload->ring_id]);
	if (FUNC0(rq)) {
		FUNC2("fail to allocate gem request\n");
		return FUNC1(rq);
	}

	workload->req = FUNC4(rq);
	return 0;
}