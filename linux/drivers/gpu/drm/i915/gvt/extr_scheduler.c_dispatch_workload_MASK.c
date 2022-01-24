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
struct intel_vgpu_workload {int ring_id; int dispatched; int status; struct intel_vgpu_workload* req; int /*<<< orphan*/  wa_ctx; struct intel_vgpu* vgpu; } ;
struct intel_vgpu {int /*<<< orphan*/  vgpu_lock; TYPE_1__* gvt; } ;
struct i915_request {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct TYPE_3__ {struct drm_i915_private* dev_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_vgpu_workload*) ; 
 struct i915_request* FUNC1 (struct intel_vgpu_workload**) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct intel_vgpu_workload*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_vgpu_workload*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_request*) ; 
 int FUNC5 (struct intel_vgpu_workload*) ; 
 int FUNC6 (struct intel_vgpu_workload*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct intel_vgpu_workload*) ; 
 int FUNC10 (struct intel_vgpu_workload*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct intel_vgpu_workload *workload)
{
	struct intel_vgpu *vgpu = workload->vgpu;
	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
	struct i915_request *rq;
	int ring_id = workload->ring_id;
	int ret;

	FUNC2("ring id %d prepare to dispatch workload %p\n",
		ring_id, workload);

	FUNC7(&vgpu->vgpu_lock);
	FUNC7(&dev_priv->drm.struct_mutex);

	ret = FUNC6(workload);
	if (ret)
		goto err_req;

	ret = FUNC5(workload);
	if (ret)
		goto out;

	ret = FUNC9(workload);
	if (ret) {
		FUNC11(&workload->wa_ctx);
		goto out;
	}

	ret = FUNC10(workload);
out:
	if (ret) {
		/* We might still need to add request with
		 * clean ctx to retire it properly..
		 */
		rq = FUNC1(&workload->req);
		FUNC4(rq);
	}

	if (!FUNC0(workload->req)) {
		FUNC2("ring id %d submit workload to i915 %p\n",
				ring_id, workload->req);
		FUNC3(workload->req);
		workload->dispatched = true;
	}
err_req:
	if (ret)
		workload->status = ret;
	FUNC8(&dev_priv->drm.struct_mutex);
	FUNC8(&vgpu->vgpu_lock);
	return ret;
}