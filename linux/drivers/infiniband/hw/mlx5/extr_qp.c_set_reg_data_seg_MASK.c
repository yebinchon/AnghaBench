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
struct mlx5_wqe_data_seg {void* lkey; void* byte_count; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  local_dma_lkey; } ;
struct mlx5_ib_pd {TYPE_1__ ibpd; } ;
struct mlx5_ib_mr {int desc_size; int ndescs; int meta_ndescs; int /*<<< orphan*/  desc_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mlx5_wqe_data_seg *dseg,
			     struct mlx5_ib_mr *mr,
			     struct mlx5_ib_pd *pd)
{
	int bcount = mr->desc_size * (mr->ndescs + mr->meta_ndescs);

	dseg->addr = FUNC2(mr->desc_map);
	dseg->byte_count = FUNC1(FUNC0(bcount, 64));
	dseg->lkey = FUNC1(pd->ibpd.local_dma_lkey);
}