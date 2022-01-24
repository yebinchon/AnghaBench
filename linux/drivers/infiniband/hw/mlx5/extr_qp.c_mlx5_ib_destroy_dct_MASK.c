#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct mlx5_ib_qp* in; int /*<<< orphan*/  mdct; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct mlx5_ib_qp {scalar_t__ state; TYPE_2__ dct; TYPE_1__ ibqp; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 scalar_t__ IB_QPS_RTR ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_ib_qp*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_dev*,char*,int) ; 
 struct mlx5_ib_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mlx5_ib_qp *mqp)
{
	struct mlx5_ib_dev *dev = FUNC3(mqp->ibqp.device);

	if (mqp->state == IB_QPS_RTR) {
		int err;

		err = FUNC1(dev->mdev, &mqp->dct.mdct);
		if (err) {
			FUNC2(dev, "failed to destroy DCT %d\n", err);
			return err;
		}
	}

	FUNC0(mqp->dct.in);
	FUNC0(mqp);
	return 0;
}