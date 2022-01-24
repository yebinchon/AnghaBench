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
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct TYPE_5__ {TYPE_1__* dev; int /*<<< orphan*/  resv; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct qxl_bo {TYPE_3__ tbo; int /*<<< orphan*/  placement; int /*<<< orphan*/  type; int /*<<< orphan*/  pin_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_private; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct qxl_bo*) ; 
 int /*<<< orphan*/  FUNC2 (struct qxl_bo*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,struct ttm_operation_ctx*) ; 

__attribute__((used)) static int FUNC4(struct qxl_bo *bo)
{
	struct ttm_operation_ctx ctx = { true, false };
	int ret;

	if (!bo->pin_count) {
		FUNC2(bo, bo->type, false);
		ret = FUNC3(&bo->tbo, &bo->placement, &ctx);
		if (ret)
			return ret;
	}

	ret = FUNC0(bo->tbo.base.resv, 1);
	if (ret)
		return ret;

	/* allocate a surface for reserved + validated buffers */
	ret = FUNC1(bo->tbo.base.dev->dev_private, bo);
	if (ret)
		return ret;
	return 0;
}