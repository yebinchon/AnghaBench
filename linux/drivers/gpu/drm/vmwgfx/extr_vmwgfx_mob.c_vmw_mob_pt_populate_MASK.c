#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vmw_private {int /*<<< orphan*/  bdev; } ;
struct vmw_mob {int num_pages; TYPE_1__* pt_bo; } ;
struct ttm_operation_ctx {int interruptible; int no_wait_gpu; } ;
struct TYPE_8__ {int (* ttm_tt_populate ) (int /*<<< orphan*/ ,struct ttm_operation_ctx*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  ttm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ttm_operation_ctx*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ttm_bo_type_device ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int) ; 
 TYPE_2__ vmw_bo_driver ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  vmw_sys_ne_placement ; 

__attribute__((used)) static int FUNC8(struct vmw_private *dev_priv,
			       struct vmw_mob *mob)
{
	int ret;
	struct ttm_operation_ctx ctx = {
		.interruptible = false,
		.no_wait_gpu = false
	};

	FUNC0(mob->pt_bo != NULL);

	ret = FUNC2(&dev_priv->bdev, mob->num_pages * PAGE_SIZE,
			    ttm_bo_type_device,
			    &vmw_sys_ne_placement,
			    0, false, &mob->pt_bo);
	if (FUNC6(ret != 0))
		return ret;

	ret = FUNC4(mob->pt_bo, false, true, NULL);

	FUNC0(ret != 0);
	ret = vmw_bo_driver.ttm_tt_populate(mob->pt_bo->ttm, &ctx);
	if (FUNC6(ret != 0))
		goto out_unreserve;
	ret = FUNC7(mob->pt_bo);
	if (FUNC6(ret != 0))
		goto out_unreserve;

	FUNC5(mob->pt_bo);

	return 0;

out_unreserve:
	FUNC5(mob->pt_bo);
	FUNC3(mob->pt_bo);
	mob->pt_bo = NULL;

	return ret;
}