#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  head; } ;
struct kgd_mem {TYPE_3__* process_info; TYPE_2__ validate_list; struct amdgpu_bo* bo; } ;
struct kgd_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ttm; } ;
struct amdgpu_bo {TYPE_1__ tbo; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  eviction_fence; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_GTT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_bo*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct amdgpu_bo*,void**) ; 
 int FUNC2 (struct amdgpu_bo*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_bo*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

int FUNC12(struct kgd_dev *kgd,
		struct kgd_mem *mem, void **kptr, uint64_t *size)
{
	int ret;
	struct amdgpu_bo *bo = mem->bo;

	if (FUNC7(bo->tbo.ttm)) {
		FUNC11("userptr can't be mapped to kernel\n");
		return -EINVAL;
	}

	/* delete kgd_mem from kfd_bo_list to avoid re-validating
	 * this BO in BO's restoring after eviction.
	 */
	FUNC9(&mem->process_info->lock);

	ret = FUNC3(bo, true);
	if (ret) {
		FUNC11("Failed to reserve bo. ret %d\n", ret);
		goto bo_reserve_failed;
	}

	ret = FUNC2(bo, AMDGPU_GEM_DOMAIN_GTT);
	if (ret) {
		FUNC11("Failed to pin bo. ret %d\n", ret);
		goto pin_failed;
	}

	ret = FUNC1(bo, kptr);
	if (ret) {
		FUNC11("Failed to map bo to kernel. ret %d\n", ret);
		goto kmap_failed;
	}

	FUNC0(
		bo, mem->process_info->eviction_fence);
	FUNC8(&mem->validate_list.head);

	if (size)
		*size = FUNC4(bo);

	FUNC6(bo);

	FUNC10(&mem->process_info->lock);
	return 0;

kmap_failed:
	FUNC5(bo);
pin_failed:
	FUNC6(bo);
bo_reserve_failed:
	FUNC10(&mem->process_info->lock);

	return ret;
}