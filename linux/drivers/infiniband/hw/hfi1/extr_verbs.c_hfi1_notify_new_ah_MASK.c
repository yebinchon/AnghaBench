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
typedef  int /*<<< orphan*/  u8 ;
struct rdma_ah_attr {int dummy; } ;
struct rvt_ah {int vl; int /*<<< orphan*/  log_pmtu; struct rdma_ah_attr attr; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_ibport {int /*<<< orphan*/ * sl_to_sc; } ;
struct hfi1_devdata {TYPE_1__* vld; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 struct hfi1_devdata* FUNC0 (struct hfi1_pportdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int num_vls ; 
 struct hfi1_pportdata* FUNC4 (struct hfi1_ibport*) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*) ; 
 size_t FUNC6 (struct rdma_ah_attr*) ; 
 int FUNC7 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 struct hfi1_ibport* FUNC8 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct ib_device *ibdev,
			       struct rdma_ah_attr *ah_attr,
			       struct rvt_ah *ah)
{
	struct hfi1_ibport *ibp;
	struct hfi1_pportdata *ppd;
	struct hfi1_devdata *dd;
	u8 sc5;
	struct rdma_ah_attr *attr = &ah->attr;

	/*
	 * Do not trust reading anything from rvt_ah at this point as it is not
	 * done being setup. We can however modify things which we need to set.
	 */

	ibp = FUNC8(ibdev, FUNC5(ah_attr));
	ppd = FUNC4(ibp);
	sc5 = ibp->sl_to_sc[FUNC6(&ah->attr)];
	FUNC2(ibdev, attr);
	FUNC1(attr);
	dd = FUNC0(ppd);
	ah->vl = FUNC7(dd, sc5);
	if (ah->vl < num_vls || ah->vl == 15)
		ah->log_pmtu = FUNC3(dd->vld[ah->vl].mtu);
}