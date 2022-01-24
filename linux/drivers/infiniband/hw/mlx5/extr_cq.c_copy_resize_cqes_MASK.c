#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct mlx5_ib_dev {int dummy; } ;
struct TYPE_8__ {int cons_index; int /*<<< orphan*/  cqn; } ;
struct TYPE_6__ {int cqe_size; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;
struct mlx5_ib_cq {TYPE_4__ mcq; TYPE_3__* resize_buf; TYPE_2__ buf; TYPE_1__ ibcq; } ;
struct mlx5_cqe64 {int op_own; } ;
struct TYPE_7__ {int cqe_size; int nent; int /*<<< orphan*/  fbc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int MLX5_CQE_OWNER_MASK ; 
 scalar_t__ MLX5_CQE_RESIZE_CQ ; 
 scalar_t__ FUNC0 (struct mlx5_cqe64*) ; 
 void* FUNC1 (struct mlx5_ib_cq*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_dev*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int) ; 
 struct mlx5_ib_dev* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mlx5_ib_cq *cq)
{
	struct mlx5_ib_dev *dev = FUNC7(cq->ibcq.device);
	struct mlx5_cqe64 *scqe64;
	struct mlx5_cqe64 *dcqe64;
	void *start_cqe;
	void *scqe;
	void *dcqe;
	int ssize;
	int dsize;
	int i;
	u8 sw_own;

	ssize = cq->buf.cqe_size;
	dsize = cq->resize_buf->cqe_size;
	if (ssize != dsize) {
		FUNC4(dev, "resize from different cqe size is not supported\n");
		return -EINVAL;
	}

	i = cq->mcq.cons_index;
	scqe = FUNC1(cq, i);
	scqe64 = ssize == 64 ? scqe : scqe + 64;
	start_cqe = scqe;
	if (!scqe) {
		FUNC4(dev, "expected cqe in sw ownership\n");
		return -EINVAL;
	}

	while (FUNC0(scqe64) != MLX5_CQE_RESIZE_CQ) {
		dcqe = FUNC3(&cq->resize_buf->fbc,
					     (i + 1) & cq->resize_buf->nent);
		dcqe64 = dsize == 64 ? dcqe : dcqe + 64;
		sw_own = FUNC6(i + 1, cq->resize_buf->nent);
		FUNC2(dcqe, scqe, dsize);
		dcqe64->op_own = (dcqe64->op_own & ~MLX5_CQE_OWNER_MASK) | sw_own;

		++i;
		scqe = FUNC1(cq, i);
		scqe64 = ssize == 64 ? scqe : scqe + 64;
		if (!scqe) {
			FUNC4(dev, "expected cqe in sw ownership\n");
			return -EINVAL;
		}

		if (scqe == start_cqe) {
			FUNC5("resize CQ failed to get resize CQE, CQN 0x%x\n",
				cq->mcq.cqn);
			return -ENOMEM;
		}
	}
	++cq->mcq.cons_index;
	return 0;
}