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
struct TYPE_4__ {int /*<<< orphan*/  resv; } ;
struct TYPE_3__ {scalar_t__ mem_type; int /*<<< orphan*/  mm_node; } ;
struct ttm_buffer_object {TYPE_2__ base; TYPE_1__ mem; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_bo {int flags; scalar_t__ kfd_bo; } ;

/* Variables and functions */
 int AMDGPU_GEM_CREATE_VRAM_WIPE_ON_RELEASE ; 
 int /*<<< orphan*/  AMDGPU_POISON ; 
 scalar_t__ TTM_PL_VRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_bo*,struct dma_fence*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_buffer_object*) ; 
 int FUNC4 (struct amdgpu_bo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct amdgpu_bo* FUNC8 (struct ttm_buffer_object*) ; 

void FUNC9(struct ttm_buffer_object *bo)
{
	struct dma_fence *fence = NULL;
	struct amdgpu_bo *abo;
	int r;

	if (!FUNC3(bo))
		return;

	abo = FUNC8(bo);

	if (abo->kfd_bo)
		FUNC1(abo);

	if (bo->mem.mem_type != TTM_PL_VRAM || !bo->mem.mm_node ||
	    !(abo->flags & AMDGPU_GEM_CREATE_VRAM_WIPE_ON_RELEASE))
		return;

	FUNC6(bo->base.resv, NULL);

	r = FUNC4(abo, AMDGPU_POISON, bo->base.resv, &fence);
	if (!FUNC0(r)) {
		FUNC2(abo, fence, false);
		FUNC5(fence);
	}

	FUNC7(bo->base.resv);
}