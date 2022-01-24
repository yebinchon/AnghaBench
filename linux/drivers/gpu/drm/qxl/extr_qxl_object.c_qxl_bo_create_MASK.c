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
typedef  int /*<<< orphan*/  u32 ;
struct qxl_surface {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;
struct qxl_device {TYPE_3__ ddev; TYPE_1__ mman; } ;
struct TYPE_5__ {int /*<<< orphan*/  base; } ;
struct qxl_bo {int pin_count; int /*<<< orphan*/  placement; TYPE_2__ tbo; struct qxl_surface surf; int /*<<< orphan*/  list; scalar_t__ surface_id; int /*<<< orphan*/  type; } ;
typedef  enum ttm_bo_type { ____Placeholder_ttm_bo_type } ttm_bo_type ;

/* Variables and functions */
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct qxl_bo*) ; 
 struct qxl_bo* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qxl_ttm_bo_destroy ; 
 int /*<<< orphan*/  FUNC5 (struct qxl_bo*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,unsigned long,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int ttm_bo_type_device ; 
 int ttm_bo_type_kernel ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct qxl_device *qdev,
		  unsigned long size, bool kernel, bool pinned, u32 domain,
		  struct qxl_surface *surf,
		  struct qxl_bo **bo_ptr)
{
	struct qxl_bo *bo;
	enum ttm_bo_type type;
	int r;

	if (kernel)
		type = ttm_bo_type_kernel;
	else
		type = ttm_bo_type_device;
	*bo_ptr = NULL;
	bo = FUNC4(sizeof(struct qxl_bo), GFP_KERNEL);
	if (bo == NULL)
		return -ENOMEM;
	size = FUNC6(size, PAGE_SIZE);
	r = FUNC2(&qdev->ddev, &bo->tbo.base, size);
	if (FUNC8(r)) {
		FUNC3(bo);
		return r;
	}
	bo->type = domain;
	bo->pin_count = pinned ? 1 : 0;
	bo->surface_id = 0;
	FUNC0(&bo->list);

	if (surf)
		bo->surf = *surf;

	FUNC5(bo, domain, pinned);

	r = FUNC7(&qdev->mman.bdev, &bo->tbo, size, type,
			&bo->placement, 0, !kernel, size,
			NULL, NULL, &qxl_ttm_bo_destroy);
	if (FUNC8(r != 0)) {
		if (r != -ERESTARTSYS)
			FUNC1(qdev->ddev.dev,
				"object_init failed for (%lu, 0x%08X)\n",
				size, domain);
		return r;
	}
	*bo_ptr = bo;
	return 0;
}