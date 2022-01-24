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
typedef  int u64 ;
typedef  int u32 ;
struct uverbs_attr_bundle {int dummy; } ;
struct mlx5_ib_dm {int dev_addr; int /*<<< orphan*/  size; } ;
struct mlx5_dm {TYPE_3__* dev; } ;
struct ib_ucontext {int /*<<< orphan*/  device; } ;
struct ib_dm_alloc_attr {int /*<<< orphan*/  alignment; int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  start_offset ;
typedef  int /*<<< orphan*/  page_idx ;
struct TYPE_6__ {int /*<<< orphan*/  pdev; } ;
struct TYPE_5__ {struct mlx5_dm dm; } ;
struct TYPE_4__ {int /*<<< orphan*/  dm_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_IB_ATTR_ALLOC_DM_RESP_PAGE_INDEX ; 
 int /*<<< orphan*/  MLX5_IB_ATTR_ALLOC_DM_RESP_START_OFFSET ; 
 int /*<<< orphan*/  MLX5_MEMIC_BASE_SIZE ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memic_bar_start_addr ; 
 int FUNC3 (struct mlx5_dm*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_dm*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (struct ib_ucontext*) ; 
 int FUNC9 (struct uverbs_attr_bundle*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC10(struct ib_ucontext *ctx,
				 struct mlx5_ib_dm *dm,
				 struct ib_dm_alloc_attr *attr,
				 struct uverbs_attr_bundle *attrs)
{
	struct mlx5_dm *dm_db = &FUNC7(ctx->device)->dm;
	u64 start_offset;
	u32 page_idx;
	int err;

	dm->size = FUNC6(attr->length, MLX5_MEMIC_BASE_SIZE);

	err = FUNC3(dm_db, &dm->dev_addr,
				   dm->size, attr->alignment);
	if (err)
		return err;

	page_idx = (dm->dev_addr - FUNC5(dm_db->dev->pdev, 0) -
		    FUNC1(dm_db->dev, memic_bar_start_addr)) >>
		    PAGE_SHIFT;

	err = FUNC9(attrs,
			     MLX5_IB_ATTR_ALLOC_DM_RESP_PAGE_INDEX,
			     &page_idx, sizeof(page_idx));
	if (err)
		goto err_dealloc;

	start_offset = dm->dev_addr & ~PAGE_MASK;
	err = FUNC9(attrs,
			     MLX5_IB_ATTR_ALLOC_DM_RESP_START_OFFSET,
			     &start_offset, sizeof(start_offset));
	if (err)
		goto err_dealloc;

	FUNC2(FUNC8(ctx)->dm_pages, page_idx,
		   FUNC0(dm->size, PAGE_SIZE));

	return 0;

err_dealloc:
	FUNC4(dm_db, dm->dev_addr, dm->size);

	return err;
}