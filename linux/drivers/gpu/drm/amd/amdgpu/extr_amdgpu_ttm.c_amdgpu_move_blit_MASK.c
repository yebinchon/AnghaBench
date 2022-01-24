#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ttm_mem_reg {int num_pages; scalar_t__ mem_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  resv; } ;
struct ttm_buffer_object {scalar_t__ type; TYPE_1__ base; int /*<<< orphan*/  bdev; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_copy_mem {scalar_t__ offset; struct ttm_mem_reg* mem; struct ttm_buffer_object* bo; } ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int AMDGPU_GEM_CREATE_VRAM_WIPE_ON_RELEASE ; 
 int /*<<< orphan*/  AMDGPU_POISON ; 
 int PAGE_SHIFT ; 
 scalar_t__ TTM_PL_VRAM ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dma_fence**) ; 
 struct amdgpu_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct amdgpu_device*,struct amdgpu_copy_mem*,struct amdgpu_copy_mem*,int,int /*<<< orphan*/ ,struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_fence*,int) ; 
 int FUNC5 (struct ttm_buffer_object*,struct dma_fence*,int,struct ttm_mem_reg*) ; 
 int FUNC6 (struct ttm_buffer_object*,struct dma_fence*,int,struct ttm_mem_reg*) ; 
 scalar_t__ ttm_bo_type_kernel ; 
 TYPE_2__* FUNC7 (struct ttm_buffer_object*) ; 

__attribute__((used)) static int FUNC8(struct ttm_buffer_object *bo,
			    bool evict, bool no_wait_gpu,
			    struct ttm_mem_reg *new_mem,
			    struct ttm_mem_reg *old_mem)
{
	struct amdgpu_device *adev = FUNC1(bo->bdev);
	struct amdgpu_copy_mem src, dst;
	struct dma_fence *fence = NULL;
	int r;

	src.bo = bo;
	dst.bo = bo;
	src.mem = old_mem;
	dst.mem = new_mem;
	src.offset = 0;
	dst.offset = 0;

	r = FUNC2(adev, &src, &dst,
				       new_mem->num_pages << PAGE_SHIFT,
				       bo->base.resv, &fence);
	if (r)
		goto error;

	/* clear the space being freed */
	if (old_mem->mem_type == TTM_PL_VRAM &&
	    (FUNC7(bo)->flags &
	     AMDGPU_GEM_CREATE_VRAM_WIPE_ON_RELEASE)) {
		struct dma_fence *wipe_fence = NULL;

		r = FUNC0(FUNC7(bo), AMDGPU_POISON,
				       NULL, &wipe_fence);
		if (r) {
			goto error;
		} else if (wipe_fence) {
			FUNC3(fence);
			fence = wipe_fence;
		}
	}

	/* Always block for VM page tables before committing the new location */
	if (bo->type == ttm_bo_type_kernel)
		r = FUNC5(bo, fence, true, new_mem);
	else
		r = FUNC6(bo, fence, evict, new_mem);
	FUNC3(fence);
	return r;

error:
	if (fence)
		FUNC4(fence, false);
	FUNC3(fence);
	return r;
}