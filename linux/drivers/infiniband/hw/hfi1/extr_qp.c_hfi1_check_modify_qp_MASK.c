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
typedef  int u8 ;
struct ib_qp {int /*<<< orphan*/  device; } ;
struct rvt_qp {struct ib_qp ibqp; } ;
struct ib_udata {int dummy; } ;
struct ib_qp_attr {int /*<<< orphan*/  alt_ah_attr; int /*<<< orphan*/  ah_attr; } ;
struct hfi1_ibdev {int dummy; } ;
struct hfi1_devdata {int flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int HFI1_HAS_SEND_DMA ; 
 int IB_QP_ALT_PATH ; 
 int IB_QP_AV ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hfi1_devdata* FUNC1 (struct hfi1_ibdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rvt_qp*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rvt_qp*,int) ; 
 struct hfi1_ibdev* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct rvt_qp *qp, struct ib_qp_attr *attr,
			 int attr_mask, struct ib_udata *udata)
{
	struct ib_qp *ibqp = &qp->ibqp;
	struct hfi1_ibdev *dev = FUNC4(ibqp->device);
	struct hfi1_devdata *dd = FUNC1(dev);
	u8 sc;

	if (attr_mask & IB_QP_AV) {
		sc = FUNC0(ibqp->device, &attr->ah_attr);
		if (sc == 0xf)
			return -EINVAL;

		if (!FUNC2(qp, sc) &&
		    dd->flags & HFI1_HAS_SEND_DMA)
			return -EINVAL;

		if (!FUNC3(qp, sc))
			return -EINVAL;
	}

	if (attr_mask & IB_QP_ALT_PATH) {
		sc = FUNC0(ibqp->device, &attr->alt_ah_attr);
		if (sc == 0xf)
			return -EINVAL;

		if (!FUNC2(qp, sc) &&
		    dd->flags & HFI1_HAS_SEND_DMA)
			return -EINVAL;

		if (!FUNC3(qp, sc))
			return -EINVAL;
	}

	return 0;
}