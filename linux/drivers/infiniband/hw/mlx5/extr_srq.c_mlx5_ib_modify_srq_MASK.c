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
struct TYPE_2__ {scalar_t__ max; } ;
struct mlx5_ib_srq {int /*<<< orphan*/  mutex; TYPE_1__ msrq; } ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_srq_attr {scalar_t__ srq_limit; } ;
struct ib_srq {int /*<<< orphan*/  device; } ;
typedef  enum ib_srq_attr_mask { ____Placeholder_ib_srq_attr_mask } ib_srq_attr_mask ;

/* Variables and functions */
 int EINVAL ; 
 int IB_SRQ_LIMIT ; 
 int IB_SRQ_MAX_WR ; 
 int FUNC0 (struct mlx5_ib_dev*,TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mlx5_ib_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_srq* FUNC4 (struct ib_srq*) ; 

int FUNC5(struct ib_srq *ibsrq, struct ib_srq_attr *attr,
		       enum ib_srq_attr_mask attr_mask, struct ib_udata *udata)
{
	struct mlx5_ib_dev *dev = FUNC3(ibsrq->device);
	struct mlx5_ib_srq *srq = FUNC4(ibsrq);
	int ret;

	/* We don't support resizing SRQs yet */
	if (attr_mask & IB_SRQ_MAX_WR)
		return -EINVAL;

	if (attr_mask & IB_SRQ_LIMIT) {
		if (attr->srq_limit >= srq->msrq.max)
			return -EINVAL;

		FUNC1(&srq->mutex);
		ret = FUNC0(dev, &srq->msrq, attr->srq_limit, 1);
		FUNC2(&srq->mutex);

		if (ret)
			return ret;
	}

	return 0;
}