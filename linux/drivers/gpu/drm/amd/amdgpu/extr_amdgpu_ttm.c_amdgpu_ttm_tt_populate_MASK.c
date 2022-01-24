#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ttm_tt {int page_flags; void* state; int /*<<< orphan*/  num_pages; int /*<<< orphan*/  pages; scalar_t__ sg; int /*<<< orphan*/  bdev; } ;
struct ttm_operation_ctx {int dummy; } ;
struct sg_table {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dma_address; } ;
struct amdgpu_ttm_tt {TYPE_1__ ttm; scalar_t__ userptr; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; scalar_t__ need_swiotlb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TTM_PAGE_FLAG_SG ; 
 struct amdgpu_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 void* tt_unbound ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,struct ttm_operation_ctx*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,struct ttm_operation_ctx*) ; 

__attribute__((used)) static int FUNC6(struct ttm_tt *ttm,
			struct ttm_operation_ctx *ctx)
{
	struct amdgpu_device *adev = FUNC0(ttm->bdev);
	struct amdgpu_ttm_tt *gtt = (void *)ttm;
	bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);

	/* user pages are bound by amdgpu_ttm_tt_pin_userptr() */
	if (gtt && gtt->userptr) {
		ttm->sg = FUNC2(sizeof(struct sg_table), GFP_KERNEL);
		if (!ttm->sg)
			return -ENOMEM;

		ttm->page_flags |= TTM_PAGE_FLAG_SG;
		ttm->state = tt_unbound;
		return 0;
	}

	if (slave && ttm->sg) {
		FUNC1(ttm->sg, ttm->pages,
						 gtt->ttm.dma_address,
						 ttm->num_pages);
		ttm->state = tt_unbound;
		return 0;
	}

#ifdef CONFIG_SWIOTLB
	if (adev->need_swiotlb && swiotlb_nr_tbl()) {
		return ttm_dma_populate(&gtt->ttm, adev->dev, ctx);
	}
#endif

	/* fall back to generic helper to populate the page array
	 * and map them to the device */
	return FUNC5(adev->dev, &gtt->ttm, ctx);
}