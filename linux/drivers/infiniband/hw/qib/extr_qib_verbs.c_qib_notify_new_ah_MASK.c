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
struct rvt_ah {int /*<<< orphan*/  log_pmtu; int /*<<< orphan*/  attr; int /*<<< orphan*/  vl; } ;
struct rdma_ah_attr {int dummy; } ;
struct qib_pportdata {int /*<<< orphan*/  ibmtu; } ;
struct qib_ibport {int /*<<< orphan*/ * sl_to_vl; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct qib_pportdata* FUNC1 (struct qib_ibport*) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_ah_attr*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 struct qib_ibport* FUNC4 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ib_device *ibdev,
			      struct rdma_ah_attr *ah_attr,
			      struct rvt_ah *ah)
{
	struct qib_ibport *ibp;
	struct qib_pportdata *ppd;

	/*
	 * Do not trust reading anything from rvt_ah at this point as it is not
	 * done being setup. We can however modify things which we need to set.
	 */

	ibp = FUNC4(ibdev, FUNC2(ah_attr));
	ppd = FUNC1(ibp);
	ah->vl = ibp->sl_to_vl[FUNC3(&ah->attr)];
	ah->log_pmtu = FUNC0(ppd->ibmtu);
}