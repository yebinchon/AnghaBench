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
typedef  size_t u8 ;
struct rdma_ah_attr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_ibport {size_t* sl_to_sc; } ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (size_t*) ; 
 int EINVAL ; 
 int IB_AH_GRH ; 
 size_t FUNC1 (size_t,size_t) ; 
 struct hfi1_devdata* FUNC2 (struct hfi1_pportdata*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int num_vls ; 
 struct hfi1_pportdata* FUNC4 (struct hfi1_ibport*) ; 
 int FUNC5 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_ah_attr*) ; 
 size_t FUNC8 (struct rdma_ah_attr*) ; 
 int FUNC9 (struct hfi1_devdata*,size_t) ; 
 struct hfi1_ibport* FUNC10 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ib_device *ibdev, struct rdma_ah_attr *ah_attr)
{
	struct hfi1_ibport *ibp;
	struct hfi1_pportdata *ppd;
	struct hfi1_devdata *dd;
	u8 sc5;
	u8 sl;

	if (FUNC3(FUNC6(ah_attr)) &&
	    !(FUNC5(ah_attr) & IB_AH_GRH))
		return -EINVAL;

	/* test the mapping for validity */
	ibp = FUNC10(ibdev, FUNC7(ah_attr));
	ppd = FUNC4(ibp);
	dd = FUNC2(ppd);

	sl = FUNC8(ah_attr);
	if (sl >= FUNC0(ibp->sl_to_sc))
		return -EINVAL;
	sl = FUNC1(sl, FUNC0(ibp->sl_to_sc));

	sc5 = ibp->sl_to_sc[sl];
	if (FUNC9(dd, sc5) > num_vls && FUNC9(dd, sc5) != 0xf)
		return -EINVAL;
	return 0;
}