#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct TYPE_9__ {scalar_t__ start_offset; scalar_t__ size; struct amdgpu_bo* reserved_bo; int /*<<< orphan*/ * va; } ;
struct TYPE_7__ {scalar_t__ visible_vram_size; } ;
struct amdgpu_device {TYPE_3__ fw_vram_usage; TYPE_1__ gmc; } ;
struct amdgpu_bo_param {scalar_t__ size; int flags; int /*<<< orphan*/ * resv; int /*<<< orphan*/  type; int /*<<< orphan*/  domain; int /*<<< orphan*/  byte_align; } ;
struct TYPE_10__ {int /*<<< orphan*/  mem; } ;
struct TYPE_11__ {int num_placement; } ;
struct amdgpu_bo {TYPE_4__ tbo; TYPE_5__ placement; TYPE_2__* placements; } ;
typedef  int /*<<< orphan*/  bp ;
struct TYPE_8__ {scalar_t__ lpfn; scalar_t__ fpfn; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED ; 
 int AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS ; 
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct amdgpu_device*,struct amdgpu_bo_param*,struct amdgpu_bo**) ; 
 int FUNC2 (struct amdgpu_bo*,int /*<<< orphan*/ **) ; 
 int FUNC3 (struct amdgpu_bo*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC4 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_bo**) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_bo_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ *,struct ttm_operation_ctx*) ; 
 int /*<<< orphan*/  ttm_bo_type_kernel ; 

__attribute__((used)) static int FUNC11(struct amdgpu_device *adev)
{
	struct ttm_operation_ctx ctx = { false, false };
	struct amdgpu_bo_param bp;
	int r = 0;
	int i;
	u64 vram_size = adev->gmc.visible_vram_size;
	u64 offset = adev->fw_vram_usage.start_offset;
	u64 size = adev->fw_vram_usage.size;
	struct amdgpu_bo *bo;

	FUNC8(&bp, 0, sizeof(bp));
	bp.size = adev->fw_vram_usage.size;
	bp.byte_align = PAGE_SIZE;
	bp.domain = AMDGPU_GEM_DOMAIN_VRAM;
	bp.flags = AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED |
		AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS;
	bp.type = ttm_bo_type_kernel;
	bp.resv = NULL;
	adev->fw_vram_usage.va = NULL;
	adev->fw_vram_usage.reserved_bo = NULL;

	if (adev->fw_vram_usage.size > 0 &&
		adev->fw_vram_usage.size <= vram_size) {

		r = FUNC1(adev, &bp,
				     &adev->fw_vram_usage.reserved_bo);
		if (r)
			goto error_create;

		r = FUNC4(adev->fw_vram_usage.reserved_bo, false);
		if (r)
			goto error_reserve;

		/* remove the original mem node and create a new one at the
		 * request position
		 */
		bo = adev->fw_vram_usage.reserved_bo;
		offset = FUNC0(offset, PAGE_SIZE);
		for (i = 0; i < bo->placement.num_placement; ++i) {
			bo->placements[i].fpfn = offset >> PAGE_SHIFT;
			bo->placements[i].lpfn = (offset + size) >> PAGE_SHIFT;
		}

		FUNC9(&bo->tbo, &bo->tbo.mem);
		r = FUNC10(&bo->tbo, &bo->placement,
				     &bo->tbo.mem, &ctx);
		if (r)
			goto error_pin;

		r = FUNC3(adev->fw_vram_usage.reserved_bo,
			AMDGPU_GEM_DOMAIN_VRAM,
			adev->fw_vram_usage.start_offset,
			(adev->fw_vram_usage.start_offset +
			adev->fw_vram_usage.size));
		if (r)
			goto error_pin;
		r = FUNC2(adev->fw_vram_usage.reserved_bo,
			&adev->fw_vram_usage.va);
		if (r)
			goto error_kmap;

		FUNC7(adev->fw_vram_usage.reserved_bo);
	}
	return r;

error_kmap:
	FUNC5(adev->fw_vram_usage.reserved_bo);
error_pin:
	FUNC7(adev->fw_vram_usage.reserved_bo);
error_reserve:
	FUNC6(&adev->fw_vram_usage.reserved_bo);
error_create:
	adev->fw_vram_usage.va = NULL;
	adev->fw_vram_usage.reserved_bo = NULL;
	return r;
}