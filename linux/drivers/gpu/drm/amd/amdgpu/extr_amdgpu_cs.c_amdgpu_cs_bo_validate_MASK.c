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
typedef  scalar_t__ uint32_t ;
struct ttm_operation_ctx {int interruptible; int no_wait_gpu; scalar_t__ bytes_moved; int /*<<< orphan*/  flags; int /*<<< orphan*/  resv; } ;
struct amdgpu_device {int /*<<< orphan*/  gmc; } ;
struct amdgpu_cs_parser {scalar_t__ bytes_moved; scalar_t__ bytes_moved_threshold; scalar_t__ bytes_moved_vis; scalar_t__ bytes_moved_vis_threshold; } ;
struct TYPE_3__ {int /*<<< orphan*/  resv; } ;
struct TYPE_4__ {TYPE_1__ base; int /*<<< orphan*/  bdev; } ;
struct amdgpu_bo {int flags; scalar_t__ preferred_domains; scalar_t__ allowed_domains; int /*<<< orphan*/  placement; TYPE_2__ tbo; scalar_t__ pin_count; } ;

/* Variables and functions */
 int AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_bo*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct amdgpu_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,struct ttm_operation_ctx*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_cs_parser *p,
				 struct amdgpu_bo *bo)
{
	struct amdgpu_device *adev = FUNC3(bo->tbo.bdev);
	struct ttm_operation_ctx ctx = {
		.interruptible = true,
		.no_wait_gpu = false,
		.resv = bo->tbo.base.resv,
		.flags = 0
	};
	uint32_t domain;
	int r;

	if (bo->pin_count)
		return 0;

	/* Don't move this buffer if we have depleted our allowance
	 * to move it. Don't move anything if the threshold is zero.
	 */
	if (p->bytes_moved < p->bytes_moved_threshold) {
		if (!FUNC2(&adev->gmc) &&
		    (bo->flags & AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED)) {
			/* And don't move a CPU_ACCESS_REQUIRED BO to limited
			 * visible VRAM if we've depleted our allowance to do
			 * that.
			 */
			if (p->bytes_moved_vis < p->bytes_moved_vis_threshold)
				domain = bo->preferred_domains;
			else
				domain = bo->allowed_domains;
		} else {
			domain = bo->preferred_domains;
		}
	} else {
		domain = bo->allowed_domains;
	}

retry:
	FUNC1(bo, domain);
	r = FUNC4(&bo->tbo, &bo->placement, &ctx);

	p->bytes_moved += ctx.bytes_moved;
	if (!FUNC2(&adev->gmc) &&
	    FUNC0(bo))
		p->bytes_moved_vis += ctx.bytes_moved;

	if (FUNC5(r == -ENOMEM) && domain != bo->allowed_domains) {
		domain = bo->allowed_domains;
		goto retry;
	}

	return r;
}