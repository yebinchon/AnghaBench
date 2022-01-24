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
typedef  scalar_t__ uint32_t ;
struct drm_file {int dummy; } ;
struct amdgpu_ctx_mgr {int /*<<< orphan*/  lock; int /*<<< orphan*/  ctx_handles; } ;
struct amdgpu_fpriv {struct amdgpu_ctx_mgr ctx_mgr; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_ctx {int dummy; } ;
typedef  enum drm_sched_priority { ____Placeholder_drm_sched_priority } drm_sched_priority ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_VM_MAX_NUM_CTX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct amdgpu_device*,int,struct drm_file*,struct amdgpu_ctx*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct amdgpu_ctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ctx*) ; 
 struct amdgpu_ctx* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_device *adev,
			    struct amdgpu_fpriv *fpriv,
			    struct drm_file *filp,
			    enum drm_sched_priority priority,
			    uint32_t *id)
{
	struct amdgpu_ctx_mgr *mgr = &fpriv->ctx_mgr;
	struct amdgpu_ctx *ctx;
	int r;

	ctx = FUNC4(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC5(&mgr->lock);
	r = FUNC1(&mgr->ctx_handles, ctx, 1, AMDGPU_VM_MAX_NUM_CTX, GFP_KERNEL);
	if (r < 0) {
		FUNC6(&mgr->lock);
		FUNC3(ctx);
		return r;
	}

	*id = (uint32_t)r;
	r = FUNC0(adev, priority, filp, ctx);
	if (r) {
		FUNC2(&mgr->ctx_handles, *id);
		*id = 0;
		FUNC3(ctx);
	}
	FUNC6(&mgr->lock);
	return r;
}