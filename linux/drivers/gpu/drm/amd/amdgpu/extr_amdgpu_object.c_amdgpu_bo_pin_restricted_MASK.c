#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct amdgpu_device {int /*<<< orphan*/  gart_pin_size; int /*<<< orphan*/  visible_pin_size; int /*<<< orphan*/  vram_pin_size; int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {size_t mem_type; } ;
struct TYPE_10__ {TYPE_3__ mem; TYPE_6__* bdev; int /*<<< orphan*/  ttm; } ;
struct TYPE_11__ {int num_placement; } ;
struct amdgpu_bo {int pin_count; int flags; TYPE_4__ tbo; TYPE_5__ placement; TYPE_2__* placements; scalar_t__ prime_shared_count; } ;
struct TYPE_12__ {TYPE_1__* man; } ;
struct TYPE_8__ {unsigned int fpfn; unsigned int lpfn; int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {scalar_t__ gpu_offset; } ;

/* Variables and functions */
 int AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED ; 
 int AMDGPU_GEM_CREATE_NO_CPU_ACCESS ; 
 int AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS ; 
 int AMDGPU_GEM_DOMAIN_GTT ; 
 int AMDGPU_GEM_DOMAIN_VRAM ; 
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  TTM_PL_FLAG_NO_EVICT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct amdgpu_device*,int) ; 
 scalar_t__ FUNC2 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_bo*) ; 
 int FUNC5 (size_t) ; 
 struct amdgpu_device* FUNC6 (TYPE_6__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,struct amdgpu_bo*) ; 
 int FUNC11 (TYPE_4__*,TYPE_5__*,struct ttm_operation_ctx*) ; 
 scalar_t__ FUNC12 (int) ; 

int FUNC13(struct amdgpu_bo *bo, u32 domain,
			     u64 min_offset, u64 max_offset)
{
	struct amdgpu_device *adev = FUNC6(bo->tbo.bdev);
	struct ttm_operation_ctx ctx = { false, false };
	int r, i;

	if (FUNC7(bo->tbo.ttm))
		return -EPERM;

	if (FUNC0(min_offset > max_offset))
		return -EINVAL;

	/* A shared bo cannot be migrated to VRAM */
	if (bo->prime_shared_count) {
		if (domain & AMDGPU_GEM_DOMAIN_GTT)
			domain = AMDGPU_GEM_DOMAIN_GTT;
		else
			return -EINVAL;
	}

	/* This assumes only APU display buffers are pinned with (VRAM|GTT).
	 * See function amdgpu_display_supported_domains()
	 */
	domain = FUNC1(adev, domain);

	if (bo->pin_count) {
		uint32_t mem_type = bo->tbo.mem.mem_type;

		if (!(domain & FUNC5(mem_type)))
			return -EINVAL;

		bo->pin_count++;

		if (max_offset != 0) {
			u64 domain_start = bo->tbo.bdev->man[mem_type].gpu_offset;
			FUNC0(max_offset <
				     (FUNC2(bo) - domain_start));
		}

		return 0;
	}

	bo->flags |= AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS;
	/* force to pin into visible video ram */
	if (!(bo->flags & AMDGPU_GEM_CREATE_NO_CPU_ACCESS))
		bo->flags |= AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED;
	FUNC3(bo, domain);
	for (i = 0; i < bo->placement.num_placement; i++) {
		unsigned fpfn, lpfn;

		fpfn = min_offset >> PAGE_SHIFT;
		lpfn = max_offset >> PAGE_SHIFT;

		if (fpfn > bo->placements[i].fpfn)
			bo->placements[i].fpfn = fpfn;
		if (!bo->placements[i].lpfn ||
		    (lpfn && lpfn < bo->placements[i].lpfn))
			bo->placements[i].lpfn = lpfn;
		bo->placements[i].flags |= TTM_PL_FLAG_NO_EVICT;
	}

	r = FUNC11(&bo->tbo, &bo->placement, &ctx);
	if (FUNC12(r)) {
		FUNC10(adev->dev, "%p pin failed\n", bo);
		goto error;
	}

	bo->pin_count = 1;

	domain = FUNC5(bo->tbo.mem.mem_type);
	if (domain == AMDGPU_GEM_DOMAIN_VRAM) {
		FUNC9(FUNC4(bo), &adev->vram_pin_size);
		FUNC9(FUNC8(bo),
			     &adev->visible_pin_size);
	} else if (domain == AMDGPU_GEM_DOMAIN_GTT) {
		FUNC9(FUNC4(bo), &adev->gart_pin_size);
	}

error:
	return r;
}