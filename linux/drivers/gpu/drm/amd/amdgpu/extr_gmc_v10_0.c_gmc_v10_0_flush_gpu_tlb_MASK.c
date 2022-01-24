#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {TYPE_3__* funcs; } ;
struct amdgpu_job {int vm_needs_flush; TYPE_5__* ibs; int /*<<< orphan*/  vm_pd_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  gtt_window_lock; int /*<<< orphan*/  entity; int /*<<< orphan*/  buffer_funcs_enabled; struct amdgpu_ring* buffer_funcs_ring; } ;
struct TYPE_7__ {int /*<<< orphan*/  bo; } ;
struct amdgpu_device {TYPE_4__ mman; TYPE_2__ gart; scalar_t__ in_gpu_reset; int /*<<< orphan*/  ib_pool_ready; TYPE_1__* nbio_funcs; } ;
struct TYPE_10__ {int /*<<< orphan*/  length_dw; int /*<<< orphan*/ * ptr; } ;
struct TYPE_8__ {int /*<<< orphan*/  nop; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* hdp_flush ) (struct amdgpu_device*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_FENCE_OWNER_UNDEFINED ; 
 scalar_t__ AMDGPU_GFXHUB_0 ; 
 scalar_t__ AMDGPU_MMHUB_0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct amdgpu_device*,int,struct amdgpu_job**) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_job*) ; 
 int FUNC5 (struct amdgpu_job*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_fence*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct amdgpu_device *adev, uint32_t vmid,
					uint32_t vmhub, uint32_t flush_type)
{
	struct amdgpu_ring *ring = adev->mman.buffer_funcs_ring;
	struct dma_fence *fence;
	struct amdgpu_job *job;

	int r;

	/* flush hdp cache */
	adev->nbio_funcs->hdp_flush(adev, NULL);

	FUNC10(&adev->mman.gtt_window_lock);

	if (vmhub == AMDGPU_MMHUB_0) {
		FUNC9(adev, vmid, AMDGPU_MMHUB_0, 0);
		FUNC11(&adev->mman.gtt_window_lock);
		return;
	}

	FUNC0(vmhub != AMDGPU_GFXHUB_0);

	if (!adev->mman.buffer_funcs_enabled ||
	    !adev->ib_pool_ready ||
	    adev->in_gpu_reset) {
		FUNC9(adev, vmid, AMDGPU_GFXHUB_0, 0);
		FUNC11(&adev->mman.gtt_window_lock);
		return;
	}

	/* The SDMA on Navi has a bug which can theoretically result in memory
	 * corruption if an invalidation happens at the same time as an VA
	 * translation. Avoid this by doing the invalidation from the SDMA
	 * itself.
	 */
	r = FUNC3(adev, 16 * 4, &job);
	if (r)
		goto error_alloc;

	job->vm_pd_addr = FUNC2(adev->gart.bo);
	job->vm_needs_flush = true;
	job->ibs->ptr[job->ibs->length_dw++] = ring->funcs->nop;
	FUNC6(ring, &job->ibs[0]);
	r = FUNC5(job, &adev->mman.entity,
			      AMDGPU_FENCE_OWNER_UNDEFINED, &fence);
	if (r)
		goto error_submit;

	FUNC11(&adev->mman.gtt_window_lock);

	FUNC8(fence, false);
	FUNC7(fence);

	return;

error_submit:
	FUNC4(job);

error_alloc:
	FUNC11(&adev->mman.gtt_window_lock);
	FUNC1("Error flushing GPU TLB using the SDMA (%d)!\n", r);
}