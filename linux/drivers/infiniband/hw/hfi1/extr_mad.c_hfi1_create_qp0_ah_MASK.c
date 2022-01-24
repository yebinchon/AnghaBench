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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {int /*<<< orphan*/  pd; } ;
struct rvt_qp {TYPE_4__ ibqp; } ;
struct rdma_ah_attr {int /*<<< orphan*/  type; } ;
struct ib_ah {int dummy; } ;
struct hfi1_pportdata {int /*<<< orphan*/  port; } ;
struct TYPE_7__ {int /*<<< orphan*/ * qp; } ;
struct hfi1_ibport {TYPE_3__ rvp; } ;
struct TYPE_5__ {int /*<<< orphan*/  ibdev; } ;
struct TYPE_6__ {TYPE_1__ rdi; } ;
struct hfi1_devdata {TYPE_2__ verbs_dev; } ;
typedef  int /*<<< orphan*/  attr ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct ib_ah* FUNC0 (int /*<<< orphan*/ ) ; 
 struct hfi1_devdata* FUNC1 (struct hfi1_pportdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_ibport*,struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_ah_attr*,int /*<<< orphan*/ ,int) ; 
 struct hfi1_pportdata* FUNC4 (struct hfi1_ibport*) ; 
 struct rvt_qp* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ib_ah* FUNC9 (int /*<<< orphan*/ ,struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ib_ah *FUNC10(struct hfi1_ibport *ibp, u32 dlid)
{
	struct rdma_ah_attr attr;
	struct ib_ah *ah = FUNC0(-EINVAL);
	struct rvt_qp *qp0;
	struct hfi1_pportdata *ppd = FUNC4(ibp);
	struct hfi1_devdata *dd = FUNC1(ppd);
	u8 port_num = ppd->port;

	FUNC3(&attr, 0, sizeof(attr));
	attr.type = FUNC8(&dd->verbs_dev.rdi.ibdev, port_num);
	FUNC2(ibp, &attr, dlid);
	FUNC6();
	qp0 = FUNC5(ibp->rvp.qp[0]);
	if (qp0)
		ah = FUNC9(qp0->ibqp.pd, &attr, 0);
	FUNC7();
	return ah;
}