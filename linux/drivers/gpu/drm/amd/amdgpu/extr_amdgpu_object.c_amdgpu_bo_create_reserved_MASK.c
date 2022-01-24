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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct amdgpu_device {int /*<<< orphan*/  dev; } ;
struct amdgpu_bo_param {unsigned long size; int byte_align; int /*<<< orphan*/ * resv; int /*<<< orphan*/  type; int /*<<< orphan*/  flags; int /*<<< orphan*/  domain; } ;
struct amdgpu_bo {int /*<<< orphan*/  tbo; } ;
typedef  int /*<<< orphan*/  bp ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED ; 
 int /*<<< orphan*/  AMDGPU_GEM_CREATE_NO_CPU_ACCESS ; 
 int /*<<< orphan*/  AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS ; 
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

int FUNC11(struct amdgpu_device *adev,
			      unsigned long size, int align,
			      u32 domain, struct amdgpu_bo **bo_ptr,
			      u64 *gpu_addr, void **cpu_addr)
{
	struct amdgpu_bo_param bp;
	bool free = false;
	int r;

	if (!size) {
		FUNC6(bo_ptr);
		return 0;
	}

	FUNC10(&bp, 0, sizeof(bp));
	bp.size = size;
	bp.byte_align = align;
	bp.domain = domain;
	bp.flags = cpu_addr ? AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED
		: AMDGPU_GEM_CREATE_NO_CPU_ACCESS;
	bp.flags |= AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS;
	bp.type = ttm_bo_type_kernel;
	bp.resv = NULL;

	if (!*bo_ptr) {
		r = FUNC0(adev, &bp, bo_ptr);
		if (r) {
			FUNC9(adev->dev, "(%d) failed to allocate kernel bo\n",
				r);
			return r;
		}
		free = true;
	}

	r = FUNC4(*bo_ptr, false);
	if (r) {
		FUNC9(adev->dev, "(%d) failed to reserve kernel bo\n", r);
		goto error_free;
	}

	r = FUNC3(*bo_ptr, domain);
	if (r) {
		FUNC9(adev->dev, "(%d) kernel bo pin failed\n", r);
		goto error_unreserve;
	}

	r = FUNC8(&(*bo_ptr)->tbo);
	if (r) {
		FUNC9(adev->dev, "%p bind failed\n", *bo_ptr);
		goto error_unpin;
	}

	if (gpu_addr)
		*gpu_addr = FUNC1(*bo_ptr);

	if (cpu_addr) {
		r = FUNC2(*bo_ptr, cpu_addr);
		if (r) {
			FUNC9(adev->dev, "(%d) kernel bo map failed\n", r);
			goto error_unpin;
		}
	}

	return 0;

error_unpin:
	FUNC5(*bo_ptr);
error_unreserve:
	FUNC7(*bo_ptr);

error_free:
	if (free)
		FUNC6(bo_ptr);

	return r;
}