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
struct ocrdma_qp {int dummy; } ;
struct ocrdma_dev {int dummy; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;
typedef  enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;

/* Variables and functions */
 int IB_QP_STATE ; 
 struct ocrdma_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ocrdma_qp* FUNC1 (struct ib_qp*) ; 
 int FUNC2 (struct ocrdma_dev*,struct ocrdma_qp*,struct ib_qp_attr*,int) ; 
 int FUNC3 (struct ocrdma_qp*,int /*<<< orphan*/ ,int*) ; 

int FUNC4(struct ib_qp *ibqp, struct ib_qp_attr *attr,
		      int attr_mask)
{
	int status = 0;
	struct ocrdma_qp *qp;
	struct ocrdma_dev *dev;
	enum ib_qp_state old_qps;

	qp = FUNC1(ibqp);
	dev = FUNC0(ibqp->device);
	if (attr_mask & IB_QP_STATE)
		status = FUNC3(qp, attr->qp_state, &old_qps);
	/* if new and previous states are same hw doesn't need to
	 * know about it.
	 */
	if (status < 0)
		return status;
	return FUNC2(dev, qp, attr, attr_mask);
}