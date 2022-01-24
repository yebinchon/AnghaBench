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
typedef  int /*<<< orphan*/  uint64_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; } ;
struct amdgpu_bo_param {size_t size; int /*<<< orphan*/  flags; int /*<<< orphan*/ * resv; int /*<<< orphan*/  type; int /*<<< orphan*/  domain; int /*<<< orphan*/  byte_align; } ;
struct amdgpu_bo {int /*<<< orphan*/  tbo; } ;
typedef  int /*<<< orphan*/  bp ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_CREATE_CPU_GTT_USWC ; 
 int /*<<< orphan*/  AMDGPU_GEM_CREATE_MQD_GFX9 ; 
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_GTT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct amdgpu_device*,struct amdgpu_bo_param*,struct amdgpu_bo**) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_bo*) ; 
 int FUNC2 (struct amdgpu_bo*,void**) ; 
 int FUNC3 (struct amdgpu_bo*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_bo**) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_bo*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_bo_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ttm_bo_type_kernel ; 

int FUNC11(struct kgd_dev *kgd, size_t size,
				void **mem_obj, uint64_t *gpu_addr,
				void **cpu_ptr, bool mqd_gfx9)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)kgd;
	struct amdgpu_bo *bo = NULL;
	struct amdgpu_bo_param bp;
	int r;
	void *cpu_ptr_tmp = NULL;

	FUNC10(&bp, 0, sizeof(bp));
	bp.size = size;
	bp.byte_align = PAGE_SIZE;
	bp.domain = AMDGPU_GEM_DOMAIN_GTT;
	bp.flags = AMDGPU_GEM_CREATE_CPU_GTT_USWC;
	bp.type = ttm_bo_type_kernel;
	bp.resv = NULL;

	if (mqd_gfx9)
		bp.flags |= AMDGPU_GEM_CREATE_MQD_GFX9;

	r = FUNC0(adev, &bp, &bo);
	if (r) {
		FUNC9(adev->dev,
			"failed to allocate BO for amdkfd (%d)\n", r);
		return r;
	}

	/* map the buffer */
	r = FUNC4(bo, true);
	if (r) {
		FUNC9(adev->dev, "(%d) failed to reserve bo for amdkfd\n", r);
		goto allocate_mem_reserve_bo_failed;
	}

	r = FUNC3(bo, AMDGPU_GEM_DOMAIN_GTT);
	if (r) {
		FUNC9(adev->dev, "(%d) failed to pin bo for amdkfd\n", r);
		goto allocate_mem_pin_bo_failed;
	}

	r = FUNC8(&bo->tbo);
	if (r) {
		FUNC9(adev->dev, "%p bind failed\n", bo);
		goto allocate_mem_kmap_bo_failed;
	}

	r = FUNC2(bo, &cpu_ptr_tmp);
	if (r) {
		FUNC9(adev->dev,
			"(%d) failed to map bo to kernel for amdkfd\n", r);
		goto allocate_mem_kmap_bo_failed;
	}

	*mem_obj = bo;
	*gpu_addr = FUNC1(bo);
	*cpu_ptr = cpu_ptr_tmp;

	FUNC7(bo);

	return 0;

allocate_mem_kmap_bo_failed:
	FUNC5(bo);
allocate_mem_pin_bo_failed:
	FUNC7(bo);
allocate_mem_reserve_bo_failed:
	FUNC6(&bo);

	return r;
}