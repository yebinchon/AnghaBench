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
typedef  int /*<<< orphan*/  uint64_t ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct radeon_ib {int length_dw; TYPE_1__* fence; } ;
struct radeon_device {int dummy; } ;
struct radeon_bo {int /*<<< orphan*/  placement; int /*<<< orphan*/  tbo; } ;
struct TYPE_2__ {int is_vm_update; } ;

/* Variables and functions */
 int /*<<< orphan*/  R600_RING_TYPE_DMA_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,struct radeon_ib*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_bo*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_bo*) ; 
 int FUNC4 (struct radeon_bo*,int) ; 
 int FUNC5 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct radeon_ib*) ; 
 int FUNC8 (struct radeon_device*,int /*<<< orphan*/ ,struct radeon_ib*,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (struct radeon_device*,struct radeon_ib*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,struct radeon_ib*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ttm_operation_ctx*) ; 

__attribute__((used)) static int FUNC12(struct radeon_device *rdev,
			      struct radeon_bo *bo)
{
	struct ttm_operation_ctx ctx = { true, false };
	struct radeon_ib ib;
	unsigned entries;
	uint64_t addr;
	int r;

	r = FUNC4(bo, false);
	if (r)
		return r;

	r = FUNC11(&bo->tbo, &bo->placement, &ctx);
	if (r)
		goto error_unreserve;

	addr = FUNC3(bo);
	entries = FUNC5(bo) / 8;

	r = FUNC8(rdev, R600_RING_TYPE_DMA_INDEX, &ib, NULL, 256);
	if (r)
		goto error_unreserve;

	ib.length_dw = 0;

	FUNC10(rdev, &ib, addr, 0, entries, 0, 0);
	FUNC1(rdev, &ib);
	FUNC0(ib.length_dw > 64);

	r = FUNC9(rdev, &ib, NULL, false);
	if (r)
		goto error_free;

	ib.fence->is_vm_update = true;
	FUNC2(bo, ib.fence, false);

error_free:
	FUNC7(rdev, &ib);

error_unreserve:
	FUNC6(bo);
	return r;
}