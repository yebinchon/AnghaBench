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
struct umr_common {int /*<<< orphan*/  sem; int /*<<< orphan*/  qp; } ;
struct TYPE_2__ {int /*<<< orphan*/ * wr_cqe; } ;
struct mlx5_umr_wr {TYPE_1__ wr; } ;
struct mlx5_ib_umr_context {int status; int /*<<< orphan*/  done; int /*<<< orphan*/  cqe; } ;
struct mlx5_ib_dev {struct umr_common umrc; } ;
struct ib_send_wr {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int IB_WC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,struct ib_send_wr const**) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_umr_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mlx5_ib_dev *dev,
				  struct mlx5_umr_wr *umrwr)
{
	struct umr_common *umrc = &dev->umrc;
	const struct ib_send_wr *bad;
	int err;
	struct mlx5_ib_umr_context umr_context;

	FUNC2(&umr_context);
	umrwr->wr.wr_cqe = &umr_context.cqe;

	FUNC0(&umrc->sem);
	err = FUNC1(umrc->qp, &umrwr->wr, &bad);
	if (err) {
		FUNC3(dev, "UMR post send failed, err %d\n", err);
	} else {
		FUNC5(&umr_context.done);
		if (umr_context.status != IB_WC_SUCCESS) {
			FUNC3(dev, "reg umr failed (%u)\n",
				     umr_context.status);
			err = -EFAULT;
		}
	}
	FUNC4(&umrc->sem);
	return err;
}