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
struct qedr_qp {scalar_t__ qp_type; int /*<<< orphan*/  qed_qp; } ;
struct qedr_dev {int /*<<< orphan*/  rdma_ctx; TYPE_1__* ops; } ;
struct ib_udata {int dummy; } ;
struct TYPE_2__ {int (* rdma_destroy_qp ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ IB_QPT_GSI ; 
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,struct qedr_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct qedr_dev*,struct qedr_qp*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct qedr_dev *dev, struct qedr_qp *qp,
				  struct ib_udata *udata)
{
	int rc = 0;

	if (qp->qp_type != IB_QPT_GSI) {
		rc = dev->ops->rdma_destroy_qp(dev->rdma_ctx, qp->qed_qp);
		if (rc)
			return rc;
	}

	if (udata)
		FUNC1(dev, qp);
	else
		FUNC0(dev, qp);

	return 0;
}