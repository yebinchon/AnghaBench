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
struct mlx5_wqe_umr_ctrl_seg {int dummy; } ;
struct mlx5_mkey_seg {int dummy; } ;
struct mlx5_ib_qp {int /*<<< orphan*/  sq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void**,int,void**) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static void FUNC3(struct mlx5_ib_qp *qp, void **seg, int *size,
			void **cur_edge)
{
	FUNC2(*seg);
	*seg += sizeof(struct mlx5_wqe_umr_ctrl_seg);
	*size += sizeof(struct mlx5_wqe_umr_ctrl_seg) / 16;
	FUNC0(&qp->sq, seg, *size, cur_edge);
	FUNC1(*seg);
	*seg += sizeof(struct mlx5_mkey_seg);
	*size += sizeof(struct mlx5_mkey_seg) / 16;
	FUNC0(&qp->sq, seg, *size, cur_edge);
}