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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_8__ {int /*<<< orphan*/  pd; } ;
struct rvt_qp {TYPE_4__ ibqp; } ;
struct rdma_ah_attr {int /*<<< orphan*/  type; } ;
struct qib_pportdata {int /*<<< orphan*/  port; } ;
struct TYPE_7__ {int /*<<< orphan*/ * qp; } ;
struct qib_ibport {TYPE_3__ rvp; } ;
struct TYPE_5__ {int /*<<< orphan*/  ibdev; } ;
struct TYPE_6__ {TYPE_1__ rdi; } ;
struct qib_devdata {TYPE_2__ verbs_dev; } ;
struct ib_ah {int dummy; } ;
typedef  int /*<<< orphan*/  attr ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct ib_ah* FUNC0 (int /*<<< orphan*/ ) ; 
 struct qib_devdata* FUNC1 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_ah_attr*,int /*<<< orphan*/ ,int) ; 
 struct qib_pportdata* FUNC3 (struct qib_ibport*) ; 
 struct rvt_qp* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 struct ib_ah* FUNC10 (int /*<<< orphan*/ ,struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 

struct ib_ah *FUNC11(struct qib_ibport *ibp, u16 dlid)
{
	struct rdma_ah_attr attr;
	struct ib_ah *ah = FUNC0(-EINVAL);
	struct rvt_qp *qp0;
	struct qib_pportdata *ppd = FUNC3(ibp);
	struct qib_devdata *dd = FUNC1(ppd);
	u8 port_num = ppd->port;

	FUNC2(&attr, 0, sizeof(attr));
	attr.type = FUNC7(&dd->verbs_dev.rdi.ibdev, port_num);
	FUNC8(&attr, dlid);
	FUNC9(&attr, port_num);
	FUNC5();
	qp0 = FUNC4(ibp->rvp.qp[0]);
	if (qp0)
		ah = FUNC10(qp0->ibqp.pd, &attr, 0);
	FUNC6();
	return ah;
}