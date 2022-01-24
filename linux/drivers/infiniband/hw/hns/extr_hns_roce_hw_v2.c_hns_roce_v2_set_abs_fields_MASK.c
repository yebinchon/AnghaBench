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
struct ib_qp_attr {int dummy; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;
struct hns_roce_v2_qp_context {int dummy; } ;
struct hns_roce_dev {int /*<<< orphan*/  dev; } ;
typedef  enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;

/* Variables and functions */
 int EINVAL ; 
 int IB_QPS_INIT ; 
 int IB_QPS_RESET ; 
 int IB_QPS_RTR ; 
 int IB_QPS_RTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_v2_qp_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_qp*,struct ib_qp_attr const*,int,struct hns_roce_v2_qp_context*,struct hns_roce_v2_qp_context*) ; 
 int FUNC4 (struct ib_qp*,struct ib_qp_attr const*,int,struct hns_roce_v2_qp_context*,struct hns_roce_v2_qp_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_qp*,struct ib_qp_attr const*,int,struct hns_roce_v2_qp_context*,struct hns_roce_v2_qp_context*) ; 
 int FUNC6 (struct ib_qp*,struct ib_qp_attr const*,int,struct hns_roce_v2_qp_context*,struct hns_roce_v2_qp_context*) ; 
 struct hns_roce_dev* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ib_qp *ibqp,
				      const struct ib_qp_attr *attr,
				      int attr_mask,
				      enum ib_qp_state cur_state,
				      enum ib_qp_state new_state,
				      struct hns_roce_v2_qp_context *context,
				      struct hns_roce_v2_qp_context *qpc_mask)
{
	struct hns_roce_dev *hr_dev = FUNC7(ibqp->device);
	int ret = 0;

	if (cur_state == IB_QPS_RESET && new_state == IB_QPS_INIT) {
		FUNC2(qpc_mask, 0, sizeof(*qpc_mask));
		FUNC5(ibqp, attr, attr_mask, context,
					qpc_mask);
	} else if (cur_state == IB_QPS_INIT && new_state == IB_QPS_INIT) {
		FUNC3(ibqp, attr, attr_mask, context,
				       qpc_mask);
	} else if (cur_state == IB_QPS_INIT && new_state == IB_QPS_RTR) {
		ret = FUNC4(ibqp, attr, attr_mask, context,
					    qpc_mask);
		if (ret)
			goto out;
	} else if (cur_state == IB_QPS_RTR && new_state == IB_QPS_RTS) {
		ret = FUNC6(ibqp, attr, attr_mask, context,
					   qpc_mask);
		if (ret)
			goto out;
	} else if (FUNC1(cur_state, new_state)) {
		/* Nothing */
		;
	} else {
		FUNC0(hr_dev->dev, "Illegal state for QP!\n");
		ret = -EINVAL;
		goto out;
	}

out:
	return ret;
}