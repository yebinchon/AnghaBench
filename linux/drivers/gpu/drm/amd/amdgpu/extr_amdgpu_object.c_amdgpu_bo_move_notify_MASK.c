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
struct ttm_mem_reg {int /*<<< orphan*/  mem_type; } ;
struct ttm_buffer_object {struct ttm_mem_reg mem; int /*<<< orphan*/  bdev; } ;
struct amdgpu_device {int /*<<< orphan*/  num_evictions; } ;
struct amdgpu_bo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_bo*) ; 
 struct amdgpu_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_bo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct amdgpu_bo* FUNC6 (struct ttm_buffer_object*) ; 

void FUNC7(struct ttm_buffer_object *bo,
			   bool evict,
			   struct ttm_mem_reg *new_mem)
{
	struct amdgpu_device *adev = FUNC2(bo->bdev);
	struct amdgpu_bo *abo;
	struct ttm_mem_reg *old_mem = &bo->mem;

	if (!FUNC0(bo))
		return;

	abo = FUNC6(bo);
	FUNC3(adev, abo, evict);

	FUNC1(abo);

	/* remember the eviction */
	if (evict)
		FUNC4(&adev->num_evictions);

	/* update statistics */
	if (!new_mem)
		return;

	/* move_notify is called before move happens */
	FUNC5(abo, new_mem->mem_type, old_mem->mem_type);
}