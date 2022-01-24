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
typedef  scalar_t__ u32 ;
struct rdma_ah_attr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {scalar_t__ lid; } ;
struct TYPE_2__ {int /*<<< orphan*/  gid_prefix; } ;
struct hfi1_ibport {TYPE_1__ rvp; } ;

/* Variables and functions */
 int IB_AH_GRH ; 
 int /*<<< orphan*/  IB_LID_PERMISSIVE ; 
 int /*<<< orphan*/  IB_MULTICAST_LID_BASE ; 
 int /*<<< orphan*/  OPA_LID_PERMISSIVE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct hfi1_pportdata* FUNC3 (struct hfi1_ibport*) ; 
 int FUNC4 (struct rdma_ah_attr*) ; 
 scalar_t__ FUNC5 (struct rdma_ah_attr*) ; 
 scalar_t__ FUNC6 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 struct hfi1_ibport* FUNC11 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC12(struct ib_device *ibdev,
				       struct rdma_ah_attr *attr)
{
	struct hfi1_pportdata *ppd;
	struct hfi1_ibport *ibp;
	u32 dlid = FUNC5(attr);

	/*
	 * Kernel clients may not have setup GRH information
	 * Set that here.
	 */
	ibp = FUNC11(ibdev, FUNC7(attr));
	ppd = FUNC3(ibp);
	if ((((dlid >= FUNC1(IB_MULTICAST_LID_BASE)) ||
	      (ppd->lid >= FUNC1(IB_MULTICAST_LID_BASE))) &&
	    (dlid != FUNC2(OPA_LID_PERMISSIVE)) &&
	    (dlid != FUNC1(IB_LID_PERMISSIVE)) &&
	    (!(FUNC4(attr) & IB_AH_GRH))) ||
	    (FUNC6(attr))) {
		FUNC8(attr, IB_AH_GRH);
		FUNC9(attr, FUNC0(dlid));
		FUNC10(attr, ibp->rvp.gid_prefix);
	}
}