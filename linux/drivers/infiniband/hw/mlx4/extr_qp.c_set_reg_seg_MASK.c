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
struct mlx4_wqe_fmr_seg {scalar_t__* reserved; void* page_size; scalar_t__ offset; void* reg_len; void* start_addr; void* buf_list; void* mem_key; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  page_size; int /*<<< orphan*/  length; int /*<<< orphan*/  iova; } ;
struct mlx4_ib_mr {TYPE_1__ ibmr; int /*<<< orphan*/  page_map; } ;
struct ib_reg_wr {int /*<<< orphan*/  key; int /*<<< orphan*/  access; int /*<<< orphan*/  mr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct mlx4_ib_mr* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mlx4_wqe_fmr_seg *fseg,
			const struct ib_reg_wr *wr)
{
	struct mlx4_ib_mr *mr = FUNC4(wr->mr);

	fseg->flags		= FUNC0(wr->access);
	fseg->mem_key		= FUNC1(wr->key);
	fseg->buf_list		= FUNC2(mr->page_map);
	fseg->start_addr	= FUNC2(mr->ibmr.iova);
	fseg->reg_len		= FUNC2(mr->ibmr.length);
	fseg->offset		= 0; /* XXX -- is this just for ZBVA? */
	fseg->page_size		= FUNC1(FUNC3(mr->ibmr.page_size));
	fseg->reserved[0]	= 0;
	fseg->reserved[1]	= 0;
}