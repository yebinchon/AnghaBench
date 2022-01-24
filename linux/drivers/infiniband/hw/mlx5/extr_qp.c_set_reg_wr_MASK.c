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
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_wqe_umr_ctrl_seg {int dummy; } ;
struct mlx5_wqe_data_seg {int dummy; } ;
struct mlx5_mkey_seg {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; int /*<<< orphan*/  pd; } ;
struct mlx5_ib_qp {int /*<<< orphan*/  sq; TYPE_3__ ibqp; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct mlx5_ib_pd {TYPE_1__ ibpd; } ;
struct mlx5_ib_mr {int ndescs; int meta_ndescs; int desc_size; int /*<<< orphan*/  descs; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct TYPE_5__ {int send_flags; } ;
struct ib_reg_wr {int access; int /*<<< orphan*/  key; TYPE_2__ wr; int /*<<< orphan*/  mr; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int IB_ACCESS_REMOTE_ATOMIC ; 
 int IB_SEND_INLINE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLX5_IB_SQ_UMR_INLINE_THRESHOLD ; 
 int MLX5_SEND_WQE_BB ; 
 int /*<<< orphan*/  MLX5_UMR_CHECK_NOT_FREE ; 
 int /*<<< orphan*/  MLX5_UMR_INLINE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void**,int,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void**,void**,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_ib_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (void*,struct mlx5_ib_mr*,struct mlx5_ib_pd*) ; 
 int /*<<< orphan*/  FUNC7 (void*,struct mlx5_ib_mr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (void*,struct mlx5_ib_mr*,int /*<<< orphan*/ ,int) ; 
 struct mlx5_ib_dev* FUNC9 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_mr* FUNC10 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_pd* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  umr_modify_entity_size_disabled ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct mlx5_ib_qp *qp,
		      const struct ib_reg_wr *wr,
		      void **seg, int *size, void **cur_edge,
		      bool check_not_free)
{
	struct mlx5_ib_mr *mr = FUNC10(wr->mr);
	struct mlx5_ib_pd *pd = FUNC11(qp->ibqp.pd);
	struct mlx5_ib_dev *dev = FUNC9(pd->ibpd.device);
	int mr_list_size = (mr->ndescs + mr->meta_ndescs) * mr->desc_size;
	bool umr_inline = mr_list_size <= MLX5_IB_SQ_UMR_INLINE_THRESHOLD;
	bool atomic = wr->access & IB_ACCESS_REMOTE_ATOMIC;
	u8 flags = 0;

	if (!FUNC4(dev, atomic)) {
		FUNC5(FUNC9(qp->ibqp.device),
			     "Fast update of %s for MR is disabled\n",
			     (FUNC1(dev->mdev,
					   umr_modify_entity_size_disabled)) ?
				     "entity size" :
				     "atomic access");
		return -EINVAL;
	}

	if (FUNC12(wr->wr.send_flags & IB_SEND_INLINE)) {
		FUNC5(FUNC9(qp->ibqp.device),
			     "Invalid IB_SEND_INLINE send flag\n");
		return -EINVAL;
	}

	if (check_not_free)
		flags |= MLX5_UMR_CHECK_NOT_FREE;
	if (umr_inline)
		flags |= MLX5_UMR_INLINE;

	FUNC8(*seg, mr, flags, atomic);
	*seg += sizeof(struct mlx5_wqe_umr_ctrl_seg);
	*size += sizeof(struct mlx5_wqe_umr_ctrl_seg) / 16;
	FUNC2(&qp->sq, seg, *size, cur_edge);

	FUNC7(*seg, mr, wr->key, wr->access);
	*seg += sizeof(struct mlx5_mkey_seg);
	*size += sizeof(struct mlx5_mkey_seg) / 16;
	FUNC2(&qp->sq, seg, *size, cur_edge);

	if (umr_inline) {
		FUNC3(&qp->sq, cur_edge, seg, size, mr->descs,
				mr_list_size);
		*size = FUNC0(*size, MLX5_SEND_WQE_BB >> 4);
	} else {
		FUNC6(*seg, mr, pd);
		*seg += sizeof(struct mlx5_wqe_data_seg);
		*size += (sizeof(struct mlx5_wqe_data_seg) / 16);
	}
	return 0;
}