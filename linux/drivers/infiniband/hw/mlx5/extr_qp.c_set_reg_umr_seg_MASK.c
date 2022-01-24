#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_wqe_umr_ctrl_seg {int /*<<< orphan*/  mkey_mask; int /*<<< orphan*/  xlt_octowords; int /*<<< orphan*/  flags; } ;
struct mlx5_ib_mr {int ndescs; int meta_ndescs; int desc_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_wqe_umr_ctrl_seg*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct mlx5_wqe_umr_ctrl_seg *umr,
			    struct mlx5_ib_mr *mr, u8 flags, bool atomic)
{
	int size = (mr->ndescs + mr->meta_ndescs) * mr->desc_size;

	FUNC3(umr, 0, sizeof(*umr));

	umr->flags = flags;
	umr->xlt_octowords = FUNC0(FUNC2(size));
	umr->mkey_mask = FUNC1(atomic);
}