#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct TYPE_2__ {int /*<<< orphan*/  ttm; } ;
struct amdgpu_bo {int /*<<< orphan*/  placement; TYPE_1__ tbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_FENCE_OWNER_KFD ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_bo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_bo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,struct ttm_operation_ctx*) ; 

__attribute__((used)) static int FUNC5(struct amdgpu_bo *bo, uint32_t domain,
				     bool wait)
{
	struct ttm_operation_ctx ctx = { false, false };
	int ret;

	if (FUNC0(FUNC3(bo->tbo.ttm),
		 "Called with userptr BO"))
		return -EINVAL;

	FUNC1(bo, domain);

	ret = FUNC4(&bo->tbo, &bo->placement, &ctx);
	if (ret)
		goto validate_fail;
	if (wait)
		FUNC2(bo, AMDGPU_FENCE_OWNER_KFD, false);

validate_fail:
	return ret;
}