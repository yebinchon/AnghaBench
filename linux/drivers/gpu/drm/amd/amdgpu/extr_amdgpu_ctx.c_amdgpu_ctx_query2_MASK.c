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
struct TYPE_2__ {int flags; int hangs; } ;
union drm_amdgpu_ctx_out {TYPE_1__ state; } ;
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_ctx_mgr {int /*<<< orphan*/  lock; int /*<<< orphan*/  ctx_handles; } ;
struct amdgpu_fpriv {struct amdgpu_ctx_mgr ctx_mgr; } ;
struct amdgpu_device {int /*<<< orphan*/  vram_lost_counter; int /*<<< orphan*/  gpu_reset_counter; } ;
struct amdgpu_ctx {scalar_t__ reset_counter; scalar_t__ vram_lost_counter; unsigned long ras_counter_ue; unsigned long ras_counter_ce; int /*<<< orphan*/  guilty; } ;

/* Variables and functions */
 int AMDGPU_CTX_QUERY2_FLAGS_GUILTY ; 
 int AMDGPU_CTX_QUERY2_FLAGS_RAS_CE ; 
 int AMDGPU_CTX_QUERY2_FLAGS_RAS_UE ; 
 int AMDGPU_CTX_QUERY2_FLAGS_RESET ; 
 int AMDGPU_CTX_QUERY2_FLAGS_VRAMLOST ; 
 int EINVAL ; 
 unsigned long FUNC0 (struct amdgpu_device*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct amdgpu_ctx* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct amdgpu_device *adev,
	struct amdgpu_fpriv *fpriv, uint32_t id,
	union drm_amdgpu_ctx_out *out)
{
	struct amdgpu_ctx *ctx;
	struct amdgpu_ctx_mgr *mgr;
	unsigned long ras_counter;

	if (!fpriv)
		return -EINVAL;

	mgr = &fpriv->ctx_mgr;
	FUNC3(&mgr->lock);
	ctx = FUNC2(&mgr->ctx_handles, id);
	if (!ctx) {
		FUNC4(&mgr->lock);
		return -EINVAL;
	}

	out->state.flags = 0x0;
	out->state.hangs = 0x0;

	if (ctx->reset_counter != FUNC1(&adev->gpu_reset_counter))
		out->state.flags |= AMDGPU_CTX_QUERY2_FLAGS_RESET;

	if (ctx->vram_lost_counter != FUNC1(&adev->vram_lost_counter))
		out->state.flags |= AMDGPU_CTX_QUERY2_FLAGS_VRAMLOST;

	if (FUNC1(&ctx->guilty))
		out->state.flags |= AMDGPU_CTX_QUERY2_FLAGS_GUILTY;

	/*query ue count*/
	ras_counter = FUNC0(adev, false);
	/*ras counter is monotonic increasing*/
	if (ras_counter != ctx->ras_counter_ue) {
		out->state.flags |= AMDGPU_CTX_QUERY2_FLAGS_RAS_UE;
		ctx->ras_counter_ue = ras_counter;
	}

	/*query ce count*/
	ras_counter = FUNC0(adev, true);
	if (ras_counter != ctx->ras_counter_ce) {
		out->state.flags |= AMDGPU_CTX_QUERY2_FLAGS_RAS_CE;
		ctx->ras_counter_ce = ras_counter;
	}

	FUNC4(&mgr->lock);
	return 0;
}